defmodule IO.ANSI.Plus.IE do
  @moduledoc false

  use PersistConfig

  alias IO.ANSI.Plus, as: ANSI

  @colors get_env(:colors)
  @fave_names get_env(:fave_names)
  @color_names get_env(:color_names)
  @legacy_colors get_env(:legacy_colors)
  @standard_colors get_env(:standard_colors)
  @color_sample_names get_env(:color_sample_names)
  @standard_color_names get_env(:standard_color_names)
  @black_foreground_codes [7, 10, 11, 14, 15] ++
                            Enum.to_list(34..51) ++
                            Enum.to_list(70..87) ++
                            Enum.to_list(106..123) ++
                            Enum.to_list(142..159) ++
                            Enum.to_list(178..195) ++
                            Enum.to_list(214..231) ++
                            Enum.to_list(244..255)

  @typedoc "A tuple of color name and color code/index"
  @type color_name :: {atom, non_neg_integer}

  @typedoc "A list of color names"
  @type color_names :: [color_name]

  @typedoc "A tuple specifying which colors to print and their layout"
  @type print_specs ::
          {code_range :: Range.t(), tiles_per_row :: pos_integer,
           column_width :: pos_integer, with_code? :: boolean}

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

  @spec fave_names :: color_names
  def fave_names, do: @fave_names

  @spec color_names :: color_names
  def color_names, do: @color_names

  @spec legacy_colors :: [map]
  def legacy_colors, do: @legacy_colors

  @spec standard_colors :: [map]
  def standard_colors, do: @standard_colors

  @spec color_sample_names :: [{non_neg_integer, [atom]}]
  def color_sample_names, do: @color_sample_names

  @spec standard_color_names :: color_names
  def standard_color_names, do: @standard_color_names

  @spec black_foreground_codes :: [non_neg_integer]
  def black_foreground_codes, do: @black_foreground_codes

  @spec print_color_samples(pos_integer) :: :ok
  def print_color_samples(line_length \\ 18 * 6) do
    IO.puts("")

    for {code, names} <- @color_sample_names do
      padded_code = String.pad_leading("(#{code})", 5)
      joined_names = Enum.map_join(names, " ", &inspect/1)

      ANSI.puts([
        ANSI.color_background(code),
        foreground(code),
        String.pad_trailing("#{padded_code} #{joined_names}", line_length)
      ])
    end

    IO.puts("")
  end

  @spec rgb_to_hsl({0..255, 0..255, 0..255}) :: {float, float, float}
  def rgb_to_hsl({r, g, b}) when r in 0..255 and g in 0..255 and b in 0..255 do
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

  @spec name_counts :: [{pos_integer, non_neg_integer}]
  def name_counts do
    for %{code: code, legacy_names: legacy_names, names: names} <- @colors do
      names = Enum.filter(names, &is_atom/1)
      {length(legacy_names ++ names), code}
    end
    |> Enum.sort(:desc)
  end

  @spec duplicate_names :: [{atom, [non_neg_integer]}]
  def duplicate_names do
    Enum.reduce(@color_names, %{}, fn {name, code}, acc ->
      Map.update(acc, name, [code], &[code | &1])
    end)
    |> Enum.filter(fn {_name, codes} -> length(codes) > 1 end)
  end

  @spec color_rows(color_names, Range.t(), pos_integer) :: [color_names]
  def color_rows(names, range, tiles_per_row) do
    Enum.slice(names, range) |> Enum.chunk_every(tiles_per_row)
  end

  @spec print_colors(color_names, print_specs) :: [:ok]
  def print_colors(names, {range, tiles_per_row, column_width, with_code?}) do
    for row <- color_rows(names, range, tiles_per_row) do
      Enum.each(row, &print_tile(&1, column_width, with_code?))
      IO.puts("")
    end
  end

  @spec print_tile(color_name, pos_integer, boolean) :: :ok
  def print_tile({name, code}, column_width, with_code?) do
    [
      background(name),
      foreground(code),
      text(name, code, column_width, with_code?)
    ]
    |> ANSI.write()
  end

  @spec print_color_chart(pos_integer) :: :ok
  def print_color_chart(column_width \\ 18) do
    IO.puts("")
    print_colors(@standard_color_names, {0..3, 4, column_width, false})
    print_colors(@standard_color_names, {0..3, 4, column_width, false})
    print_colors(@standard_color_names, {8..11, 4, column_width, false})
    IO.puts("")
    print_colors(@standard_color_names, {4..7, 4, column_width, false})
    print_colors(@standard_color_names, {12..15, 4, column_width, false})
    IO.puts("")
    print_colors(@fave_names, {0..3, 4, column_width, true})
    print_colors(@fave_names, {8..11, 4, column_width, true})
    IO.puts("")
    print_colors(@fave_names, {4..7, 4, column_width, true})
    print_colors(@fave_names, {12..15, 4, column_width, true})
    IO.puts("")
    print_colors(@fave_names, {16..255, 6, column_width, true})
    IO.puts("")
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
