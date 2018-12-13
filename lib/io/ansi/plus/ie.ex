defmodule IO.ANSI.Plus.IE do
  @moduledoc false

  alias IO.ANSI.Plus, as: ANSI

  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
      alias unquote(__MODULE__)
      alias IO.ANSI.Plus, as: ANSI
      :ok
    end
  end

  @spec color_samples :: [String.t()]
  def color_samples do
    :io_ansi_plus
    |> Application.get_env(:colors)
    |> Enum.map(fn %{code: code, hex: hex, names: names} ->
      "#" <> hex_val = hex

      "- ![#{hex}](https://placehold.it/15/#{hex_val}/000000?text=+)" <>
        "#{color_sample_names(code, names)} (#{code})"
    end)
  end

  @spec print_color_samples :: :ok
  def print_color_samples do
    color_samples() |> Enum.each(&IO.puts/1)
  end

  @spec print_standard_colors(pos_integer, pos_integer) :: :ok
  def print_standard_colors(squares_per_row, column_width) do
    for row <- standard_color_rows(squares_per_row) do
      Enum.each(row, &print_square(&1, column_width, _with_codes? = false))
      IO.write("\n")
    end

    IO.write("\n")
  end

  @spec print_xterm_colors(Range.t(), pos_integer, pos_integer) :: :ok
  def print_xterm_colors(%Range{} = range, squares_per_row, column_width) do
    for row <- xterm_color_rows(range, squares_per_row) do
      Enum.each(row, &print_square(&1, column_width, _with_codes? = true))
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
      :io_ansi_plus
      |> Application.get_env(:colors)
      |> Enum.find_value(fn %{code: color_code, names: names} ->
        if color_code == code, do: names
      end)

    if code in 0..15 do
      [standard_color_names() |> Enum.at(code) | names]
    else
      if(Enum.empty?(names), do: [:"color#{code}"], else: names)
    end
  end

  ## Private functions

  @spec fave_names :: %{atom => non_neg_integer}
  defp fave_names do
    :io_ansi_plus
    |> Application.get_env(:colors)
    |> Enum.reduce(%{}, fn
      %{names: []}, acc -> acc
      %{code: code, names: [name | _]}, acc -> Map.put(acc, name, code)
    end)
  end

  @spec fave_name_codes :: %{non_neg_integer => atom}
  defp fave_name_codes do
    fave_names() |> Map.new(fn {name, code} -> {code, name} end)
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
