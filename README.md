# IO ANSI Plus

Functionality to render ANSI escape sequences.
Clone of module [IO.ANSI][IO.ANSI] but supporting named Xterm colors.

## Installation

Add `io_ansi_plus` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:io_ansi_plus, "~> 0.1"}
  ]
end
```

## Notes

In addition to the 16 standard ANSI colors[^1] and their background
counterparts, this package also supports the 256 Xterm colors (foreground and
background).

<ins>All</ins> of these 256 colors were given names like:
- ![!](/images/00ffff.png) `:aqua`
- ![!](/images/87ff00.png) `:chartreuse`
- ![!](/images/d700ff.png) `:psychedelic_purple`

For the full list of color names, see the [Color Samples][Samples] section. Most
of these color names are based on the post [Naming the 256 XTerm colors][Xterm].

You can also use color number atoms instead of specific names:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :color163, "world!"] |> ANSI.format(true) |> IO.puts()
["Hi, ", :color163_background, "world!"] |> ANSI.format(true) |> IO.puts()
```

Most colors have <ins>multiple</ins> names, for example, `:moccasin` and `:navajo_white`
for color code 223.

[^1]: Actually 8 colors and their "bright" variants.

## Shortcuts

The package also provides shortcuts allowing to drop the `format` calls in the
following expressions:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.format(true) |> IO.puts()
["Hello, ", :purple, "world!"] |> ANSI.format(true) |> IO.write()
[:aqua, "Your move:", :reset, " "] |> ANSI.format(true) |> IO.gets()
```

The above expressions can be respectively shortened to:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.puts(true)
["Hello, ", :purple, "world!"] |> ANSI.write(true)
[:aqua, "Your move:", :reset, " "] |> ANSI.gets(true)
```
## Note
You can click on any of the 3 images below for a clearer view.

## Examples
## ![examples](/images/examples.png)

## Color Chart
## ![color_chart](/images/color_chart.png)

## Color Samples
## ![color_samples](/images/color_samples.png)

[IO.ANSI]: https://hexdocs.pm/elixir/IO.ANSI.html
[Xterm]: https://www.wowsignal.io/articles/xterm256
[Samples]: https://github.com/RaymondLoranger/io_ansi_plus?tab=readme-ov-file#color-samples
