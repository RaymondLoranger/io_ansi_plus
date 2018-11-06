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

For details, see file `config/persist_colors.exs`.

Also provides a shortcut to skip the `format` call in the following expression:

```elixir
["Hello, ", :brown, "world!"] |> IO.ANSI.Plus.format(true) |> IO.puts()
```

The above expression can be shortened to:
```elixir
["Hello, ", :brown, "world!"] |> IO.ANSI.Plus.puts(true)
```

<sup><a name="footnote1">*</a></sup> Actually 8 colors and their "bright" variants.

## Examples
## ![examples](images/io_ansi_plus_examples.png)
