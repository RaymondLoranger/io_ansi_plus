defmodule IO.ANSI.Plus.IE do
  @moduledoc false

  use PersistConfig

  alias IO.ANSI.Plus, as: ANSI

  @colors get_env(:colors)
  @fave_codes get_env(:fave_codes)
  @fave_names get_env(:fave_names)
  @color_codes get_env(:color_codes)
  @legacy_colors get_env(:legacy_colors)
  @standard_colors get_env(:standard_colors)
  @standard_color_names get_env(:standard_color_names)
  @black_foreground_codes [7, 10, 11, 14, 15] ++
                            Enum.to_list(34..51) ++
                            Enum.to_list(70..87) ++
                            Enum.to_list(106..123) ++
                            Enum.to_list(142..159) ++
                            Enum.to_list(178..195) ++
                            Enum.to_list(214..231) ++
                            Enum.to_list(244..255)

  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
      alias unquote(__MODULE__)
      alias IO.ANSI.Plus, as: ANSI
      :ok
    end
  end

  @spec colors :: [map]
  def colors, do: @colors

  @spec fave_codes :: %{atom => non_neg_integer}
  def fave_codes, do: @fave_codes

  @spec fave_names :: %{non_neg_integer => atom}
  def fave_names, do: @fave_names

  @spec color_codes :: %{atom => non_neg_integer}
  def color_codes, do: @color_codes

  @spec legacy_colors :: [map]
  def legacy_colors, do: @legacy_colors

  @spec standard_colors :: [map]
  def standard_colors, do: @standard_colors

  @spec standard_color_names :: %{non_neg_integer => atom}
  def standard_color_names, do: @standard_color_names

  @spec black_foreground_codes :: [non_neg_integer]
  def black_foreground_codes, do: @black_foreground_codes

  @spec color_samples(pos_integer) :: [[binary | atom]]
  def color_samples(line_length) do
    for %{
          code: code,
          background: background,
          legacy_names: legacy_names,
          names: names
        } = color <- colors() do
      names = Enum.filter(names, &is_atom/1)

      names =
        if color[:fave_name] do
          Enum.uniq([color.fave_name | names ++ legacy_names])
        else
          names ++ legacy_names
        end

      padded_code = String.pad_leading("(#{code})", 5)
      joined_names = Enum.map_join(names, " ", &inspect/1)

      [
        background,
        foreground(code),
        String.pad_trailing("#{padded_code} #{joined_names}", line_length)
      ]
    end
  end

  @spec print_color_samples(pos_integer) :: :ok
  def print_color_samples(line_length \\ 18 * 6) do
    IO.puts("")
    color_samples(line_length) |> Enum.each(&ANSI.puts/1)
    IO.puts("")
  end

  @spec rgb_to_hsl({non_neg_integer, non_neg_integer, non_neg_integer}) ::
          {float, float, float}
  def rgb_to_hsl({r, g, b}) do
    colors = [r, g, b] = [r / 255, g / 255, b / 255]
    {max_color, min_color} = {Enum.max(colors), Enum.min(colors)}
    l = (max_color + min_color) / 2

    if max_color == min_color do
      {0.0, 0.0, l}
    else
      color_diff = max_color - min_color

      s =
        if l > 0.5,
          do: color_diff / (2 - max_color - min_color),
          else: color_diff / (max_color + min_color)

      h =
        case max_color do
          ^r when g < b -> (g - b) / color_diff + 6
          ^r -> (g - b) / color_diff
          ^g -> (b - r) / color_diff + 2
          ^b -> (r - g) / color_diff + 4
        end

      {h * 60, s, l}
    end
  end

  @spec name_count_codes :: [{pos_integer, non_neg_integer}]
  def name_count_codes do
    for %{code: code, legacy_names: legacy_names, names: names} <- @colors do
      names = Enum.filter(names, &is_atom/1)
      {length(legacy_names ++ names), code}
    end
    |> Enum.sort(:desc)
  end

  @spec duplicate_names :: [{atom, [non_neg_integer]}]
  def duplicate_names do
    for %{code: code, legacy_names: legacy_names, names: names} <- @colors,
        name <- legacy_names ++ Enum.filter(names, &is_atom/1) do
      {name, code}
    end
    |> Enum.reduce(%{}, fn {name, code}, acc ->
      Map.update(acc, name, [code], &[code | &1])
    end)
    |> Enum.filter(fn {_name, codes} -> length(codes) > 1 end)
  end

  @spec standard_color_rows(Range.t(), pos_integer) ::
          [[{atom, non_neg_integer}]]
  def standard_color_rows(%Range{} = range, tiles_per_row) do
    Enum.map(range, &{@standard_color_names[&1], &1})
    |> Enum.chunk_every(tiles_per_row)
  end

  @spec print_standard_colors(Range.t(), pos_integer, pos_integer) :: :ok
  def print_standard_colors(%Range{} = range, tiles_per_row, column_width) do
    for row <- standard_color_rows(range, tiles_per_row) do
      Enum.each(row, &print_tile(&1, column_width, _with_code? = false))
      IO.puts("")
    end

    :ok
  end

  @spec xterm_color_rows(Range.t(), pos_integer) :: [[{atom, non_neg_integer}]]
  def xterm_color_rows(%Range{} = range, tiles_per_row) do
    Enum.map(range, &{@fave_names[&1], &1}) |> Enum.chunk_every(tiles_per_row)
  end

  @spec print_xterm_colors(Range.t(), pos_integer, pos_integer) :: :ok
  def print_xterm_colors(%Range{} = range, tiles_per_row, column_width) do
    for row <- xterm_color_rows(range, tiles_per_row) do
      Enum.each(row, &print_tile(&1, column_width, _with_code? = true))
      IO.puts("")
    end

    :ok
  end

  @spec print_color_chart(pos_integer) :: :ok
  def print_color_chart(column_width \\ 18) do
    IO.puts("")
    print_standard_colors(0..3, 4, column_width)
    print_standard_colors(8..11, 4, column_width)
    IO.puts("")
    print_standard_colors(4..7, 4, column_width)
    print_standard_colors(12..15, 4, column_width)
    IO.puts("")
    print_xterm_colors(0..3, 4, column_width)
    print_xterm_colors(8..11, 4, column_width)
    IO.puts("")
    print_xterm_colors(4..7, 4, column_width)
    print_xterm_colors(12..15, 4, column_width)
    IO.puts("")
    print_xterm_colors(16..255, 6, column_width)
    IO.puts("")
  end

  @spec print_tile({atom, non_neg_integer}, pos_integer, boolean) :: :ok
  def print_tile({name, code}, column_width, with_code?) do
    [
      background(name),
      foreground(code),
      text(name, code, column_width, with_code?)
    ]
    |> ANSI.write()
  end

  @spec background(atom) :: atom
  def background(name), do: :"#{name}_background"

  @spec foreground(non_neg_integer) :: atom
  def foreground(code) when code in @black_foreground_codes, do: :black
  def foreground(_code), do: :light_white

  @spec adjust_text(String.t(), pos_integer) :: String.t()
  def adjust_text(text, column_width) do
    if String.length(text) > column_width do
      # An ellipsis in the last position of the column indicates an overflow.
      String.slice(text, 0..(column_width - 2)) <> "…"
    else
      text
    end
    |> String.pad_trailing(column_width)
  end

  @spec text(atom, non_neg_integer, pos_integer, boolean) :: String.t()
  def text(name, _code, column_width, _with_code? = false) do
    "#{inspect(name)}" |> adjust_text(column_width)
  end

  def text(name, code, column_width, _with_code?) do
    text = "#{inspect(name)} (#{code})"

    if String.length(text) > column_width do
      "#{inspect(name)}"
    else
      text
    end
    |> adjust_text(column_width)
  end
end
