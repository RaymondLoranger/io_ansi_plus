# IO ANSI Plus

[![Build Status](https://travis-ci.org/RaymondLoranger/io_ansi_plus.svg?branch=master)](https://travis-ci.org/RaymondLoranger/io_ansi_plus)

Functionality to render ANSI escape sequences.
Clone of `IO.ANSI` supporting named Xterm colors.

## Installation

Add the `:io_ansi_plus` dependency to your `mix.exs` file:

```elixir
def deps do
  [
    {:io_ansi_plus, "~> 0.1"}
  ]
end
```

## Notes

In addition to the 16 regular ANSI colors<sup>[*](#footnote1)</sup> and
their background counterparts, this package also supports the 256 Xterm colors
(foreground and background).

Most of these 256 colors were given names like:
- ![#00ffff](https://placehold.it/15/00ffff/000000?text=+)`:aqua`
- ![#87ff00](https://placehold.it/15/87ff00/000000?text=+)`:chartreuse`
- ![#d700ff](https://placehold.it/15/d700ff/000000?text=+)`:psychedelic_purple`

For details, see file ![`config/persist_colors.exs`](config/persist_colors.exs).

You can use color number atoms for the few colors that are unnamed:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :color163, "world!"] |> ANSI.format(true) |> IO.puts()
["Hello, ", :color163_background, "world!"] |> ANSI.format(true) |> IO.puts()
```
Any color can have multiple names, for example `:moccasin` and `:navajo_white`.

<sup><a name="footnote1">*</a></sup> Actually 8 colors and their "bright" variants.

## Customization

You can create new color names or modify any predefined one by changing the
dependency's `config/persist_colors.exs` file.
You would then need to run `mix deps.compile io_ansi_plus [--force]` to make
the changes effective.

## Shortcuts

The package also provides shortcuts to drop the `format` calls in the following
expressions:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.format(true) |> IO.puts()
[:aqua, "Garry, your move:", :reset, " "] |> ANSI.format(true) |> IO.gets()
```

The above expressions can be shortened to:
```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.puts(true)
[:aqua, "Garry, your move:", :reset, " "] |> ANSI.gets(true)
```

## Examples
## ![examples](images/io_ansi_plus_examples.png)
