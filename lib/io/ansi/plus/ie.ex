defmodule IO.ANSI.Plus.IE do
  @moduledoc false

  use PersistConfig

  alias IO.ANSI.Plus, as: ANSI

  @colors get_env(:colors)

  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
      alias unquote(__MODULE__)
      alias IO.ANSI.Plus, as: ANSI
      :ok
    end
  end

  @spec color_samples :: :ok
  def color_samples do
    for %{code: code, hex: hex, names: names} <- @colors do
      (~s'- <img src="images/#{hex}.png"> ' <>
         "#{color_sample_names(code, names)} (#{code})")
      |> IO.puts()
    end

    :ok
  end

  @spec delete_color_samples :: map
  def delete_color_samples do
    results =
      for %{hex: hex} <- @colors do
        {File.rm("images/#{hex}.png"), hex}
      end

    reduce(results)
  end

  @spec write_color_samples :: map
  def write_color_samples do
    image = :egd.create(12, 12)

    results =
      for %{hex: hex, rgb: rbg} <- @colors do
        fill = :egd.color(rbg)
        :ok = :egd.filledRectangle(image, {0, 0}, {12, 12}, fill)
        binary = :egd.render(image)
        {File.write("images/#{hex}.png", binary), hex}
      end

    :ok = :egd.destroy(image)
    reduce(results)
  end

  @spec print_color_samples :: :ok
  def print_color_samples do
    color_samples() |> Enum.each(&IO.puts/1)
  end

  @spec print_standard_colors(pos_integer, pos_integer) :: :ok
  def print_standard_colors(squares_per_row, column_width) do
    for row <- standard_color_rows(squares_per_row) do
      Enum.each(row, &print_square(&1, column_width, _with_code = false))
      IO.write("\n")
    end

    IO.write("\n")
  end

  @spec print_xterm_colors(Range.t(), pos_integer, pos_integer) :: :ok
  def print_xterm_colors(%Range{} = range, squares_per_row, column_width) do
    for row <- xterm_color_rows(range, squares_per_row) do
      Enum.each(row, &print_square(&1, column_width, _with_code? = true))
      IO.write("\n")
    end

    IO.write("\n")
  end

  @spec print_color_chart :: :ok
  def print_color_chart do
    IO.write("\n")
    print_standard_colors(8, 12)
    print_xterm_colors(0..15, 8, 12)
    print_xterm_colors(16..255, 6, 18)
  end

  @spec names_for_code(0..255) :: [atom]
  def names_for_code(code) when code in 0..255 do
    names =
      Enum.find_value(@colors, fn %{code: color_code, names: names} ->
        if color_code == code, do: names
      end)

    if code in 0..15 do
      [standard_color_names() |> Enum.at(code) | names]
    else
      if(Enum.empty?(names), do: [:"color#{code}"], else: names)
    end
  end

  ## Private functions

  @spec reduce([...]) :: map
  defp reduce(results) do
    Enum.reduce(results, %{}, fn
      {:ok, _name}, acc ->
        Map.update(acc, :ok, 1, &(&1 + 1))

      {{:error, reason}, name}, acc ->
        Map.update(acc, reason, {1, [name]}, fn {n, names} ->
          {n + 1, [name | names]}
        end)
    end)
  end

  @spec fave_name_codes :: %{non_neg_integer => atom}
  defp fave_name_codes do
    Enum.reduce(@colors, %{}, fn
      %{code: _code, names: []}, acc -> acc
      %{code: code, names: [name | _]}, acc -> Map.put(acc, code, name)
    end)
  end

  @spec standard_color_rows(pos_integer) :: [keyword(non_neg_integer)]
  defp standard_color_rows(squares_per_row) do
    standard_color_names()
    |> Enum.with_index()
    |> Enum.chunk_every(squares_per_row)
  end

  @spec standard_color_names :: [atom]
  defp standard_color_names do
    names = [:black, :red, :green, :yellow, :blue, :magenta, :cyan, :white]
    lites = Enum.map(names, fn name -> :"light_#{name}" end)
    names ++ lites
  end

  @spec xterm_color_rows(Range.t(), pos_integer) :: [keyword(non_neg_integer)]
  defp xterm_color_rows(%Range{} = range, squares_per_row) do
    codes = fave_name_codes()

    for i <- range do
      if codes[i], do: {codes[i], i}, else: {:"color#{i}", i}
    end
    |> Enum.chunk_every(squares_per_row)
  end

  @spec print_square({atom, non_neg_integer}, pos_integer, boolean) :: :ok
  defp print_square({name, code}, column_width, with_code?) do
    [
      background(name),
      foreground(code),
      text(name, code, column_width, with_code?)
    ]
    |> ANSI.write()
  end

  @spec background(atom) :: atom
  defp background(name), do: :"#{name}_background"

  @spec black_foreground_codes :: [non_neg_integer]
  defp black_foreground_codes do
    [7, 10, 11, 14, 15] ++
      Enum.to_list(34..51) ++
      Enum.to_list(70..87) ++
      Enum.to_list(106..123) ++
      Enum.to_list(142..159) ++
      Enum.to_list(178..195) ++ Enum.to_list(214..231) ++ Enum.to_list(244..255)
  end

  defp foreground(code) do
    if code in black_foreground_codes(), do: :black, else: :light_white
  end

  @spec adjust_text(String.t(), pos_integer) :: String.t()
  defp adjust_text(text, column_width) do
    if String.length(text) > column_width - 1 do
      String.slice(text, 0..(column_width - 3)) <> "…"
    else
      text
    end
    |> String.pad_trailing(column_width)
  end

  @spec text(atom, non_neg_integer, pos_integer, boolean) :: String.t()
  defp text(name, _code, column_width, _with_code? = false) do
    "#{inspect(name)}" |> adjust_text(column_width)
  end

  defp text(name, code, column_width, _with_code? = true) do
    text = "#{inspect(name)} (#{code})"

    if String.length(text) > column_width - 1 do
      "#{inspect(name)}"
    else
      text
    end
    |> adjust_text(column_width)
  end

  @spec color_sample_names(non_neg_integer, [atom]) :: String.t()
  defp color_sample_names(code, _names = []) do
    if code in 0..15 do
      "`#{standard_color_names() |> Enum.at(code) |> inspect()}`"
    else
      "`:color#{code}`"
    end
  end

  defp color_sample_names(code, names) do
    names =
      if code in 0..15 do
        [standard_color_names() |> Enum.at(code) | names]
      else
        names
      end

    names
    |> Enum.reduce("", fn name, acc -> acc <> "`#{inspect(name)}` " end)
    |> String.trim_trailing()
  end
end
