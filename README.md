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

In addition to the 16 standard ANSI colors<sup>[1](#footnote1)</sup> and
their background counterparts, this package also supports the 256 Xterm colors
(foreground and background).

Most of these 256 colors were given names like:
- ![?](/images/00ffff.png) `:aqua`
- ![?](/images/87ff00.png) `:chartreuse`
- ![?](/images/d700ff.png) `:psychedelic_purple`

For the full list of color names, see the **Color Samples** section below.

You can use color number atoms for the few colors that are unnamed:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :color163, "world!"] |> ANSI.format(true) |> IO.puts()
["Hello, ", :color163_background, "world!"] |> ANSI.format(true) |> IO.puts()
```

Any color can have multiple names, for example, `:moccasin` and `:navajo_white` for color code 223.

For details, see file `config/persist_colors.exs`.

<sup><a name="footnote1">1</a></sup> Actually 8 colors and their "bright" variants.

## Shortcuts

The package also provides shortcuts to drop the `format` calls in the following
expressions:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.format(true) |> IO.puts()
["Hello, ", :purple, "world!"] |> ANSI.format(true) |> IO.write()
[:aqua, "Garry, your move:", :reset, " "] |> ANSI.format(true) |> IO.gets()
```

The above expressions can be respectively shortened to:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :brown, "world!"] |> ANSI.puts(true)
["Hello, ", :purple, "world!"] |> ANSI.write(true)
[:aqua, "Garry, your move:", :reset, " "] |> ANSI.gets(true)
```

## Examples
## ![examples](/images/io_ansi_plus_examples.png)

## Color Chart
## ![color_chart](/images/color_chart.png)

## Color Samples
<<<<<<< HEAD
- <span style="background-color: #000000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    black (0)
  </span>
- <span style="background-color: #800000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    red maroon (1)
  </span>
<li>
  <span style="background-color: #008000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    green (2)
  </span>
</li>
<li>
  <span style="background-color: #808000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    yellow (3)
  </span>
</li>
<li>
  <span style="background-color: #000080; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue navy (4)
  </span>
</li>
<li>
  <span style="background-color: #800080; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    magenta purple fresh_eggplant (5)
  </span>
</li>
<li>
  <span style="background-color: #008080; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cyan teal (6)
  </span>
</li>
<li>
  <span style="background-color: #c0c0c0; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    white (7)
  </span>
</li>
<li>
  <span style="background-color: #808080; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_black (8)
  </span>
</li>
<li>
  <span style="background-color: #ff0000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_red (9)
  </span>
</li>
<li>
  <span style="background-color: #00ff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_green lime (10)
  </span>
</li>
<li>
  <span style="background-color: #ffff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_yellow (11)
  </span>
</li>
<li>
  <span style="background-color: #0000ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_blue (12)
  </span>
</li>
<li>
  <span style="background-color: #ff00ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_magenta (13)
  </span>
</li>
<li>
  <span style="background-color: #00ffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_cyan (14)
  </span>
</li>
<li>
  <span style="background-color: #ffffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_white (15)
  </span>
</li>
<li>
  <span style="background-color: #000000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color16 (16)
  </span>
</li>
<li>
  <span style="background-color: #00005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    stratos (17)
  </span>
</li>
<li>
  <span style="background-color: #000087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_blue (18)
  </span>
</li>
<li>
  <span style="background-color: #0000af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    new_midnight_blue (19)
  </span>
</li>
<li>
  <span style="background-color: #0000d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_blue (20)
  </span>
</li>
<li>
  <span style="background-color: #0000ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color21 (21)
  </span>
</li>
<li>
  <span style="background-color: #005f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_green camarone (22)
  </span>
</li>
<li>
  <span style="background-color: #005f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue_stone dark_slate_gray mosque (23)
  </span>
</li>
<li>
  <span style="background-color: #005f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue_lagoon orient (24)
  </span>
</li>
<li>
  <span style="background-color: #005faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cobalt endeavour (25)
  </span>
</li>
<li>
  <span style="background-color: #005fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    navy_blue science_blue (26)
  </span>
</li>
<li>
  <span style="background-color: #005fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue_ribbon (27)
  </span>
</li>
<li>
  <span style="background-color: #008700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    japanese_laurel (28)
  </span>
</li>
<li>
  <span style="background-color: #00875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    deep_sea observatory (29)
  </span>
</li>
<li>
  <span style="background-color: #008787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_cyan (30)
  </span>
</li>
<li>
  <span style="background-color: #0087af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cerulean (31)
  </span>
</li>
<li>
  <span style="background-color: #0087d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pacific_blue (32)
  </span>
</li>
<li>
  <span style="background-color: #0087ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dodger_blue (33)
  </span>
</li>
<li>
  <span style="background-color: #00af00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    islamic_green (34)
  </span>
</li>
<li>
  <span style="background-color: #00af5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    jade (35)
  </span>
</li>
<li>
  <span style="background-color: #00af87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    persian_green (36)
  </span>
</li>
<li>
  <span style="background-color: #00afaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bondi_blue light_sea_green (37)
  </span>
</li>
<li>
  <span style="background-color: #00afd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    iris_blue (38)
  </span>
</li>
<li>
  <span style="background-color: #00afff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    deep_sky_blue (39)
  </span>
</li>
<li>
  <span style="background-color: #00d700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color40 (40)
  </span>
</li>
<li>
  <span style="background-color: #00d75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    malachite (41)
  </span>
</li>
<li>
  <span style="background-color: #00d787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    caribbean_green (42)
  </span>
</li>
<li>
  <span style="background-color: #00d7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color43 (43)
  </span>
</li>
<li>
  <span style="background-color: #00d7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_turquoise (44)
  </span>
</li>
<li>
  <span style="background-color: #00d7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color45 (45)
  </span>
</li>
<li>
  <span style="background-color: #00ff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color46 (46)
  </span>
</li>
<li>
  <span style="background-color: #00ff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color47 (47)
  </span>
</li>
<li>
  <span style="background-color: #00ff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    spring_green (48)
  </span>
</li>
<li>
  <span style="background-color: #00ffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_spring_green (49)
  </span>
</li>
<li>
  <span style="background-color: #00ffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bright_turquoise (50)
  </span>
</li>
<li>
  <span style="background-color: #00ffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    aqua (51)
  </span>
</li>
<li>
  <span style="background-color: #5f0000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    rosewood (52)
  </span>
</li>
<li>
  <span style="background-color: #5f005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tyrian_purple (53)
  </span>
</li>
<li>
  <span style="background-color: #5f0087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    indigo (54)
  </span>
</li>
<li>
  <span style="background-color: #5f00af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color55 (55)
  </span>
</li>
<li>
  <span style="background-color: #5f00d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    electric_indigo (56)
  </span>
</li>
<li>
  <span style="background-color: #5f00ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue_violet (57)
  </span>
</li>
<li>
  <span style="background-color: #5f5f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    verdun_green (58)
  </span>
</li>
<li>
  <span style="background-color: #5f5f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dim_gray (59)
  </span>
</li>
<li>
  <span style="background-color: #5f5f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    kimberly (60)
  </span>
</li>
<li>
  <span style="background-color: #5f5faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    rich_blue (61)
  </span>
</li>
<li>
  <span style="background-color: #5f5fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    slate_blue (62)
  </span>
</li>
<li>
  <span style="background-color: #5f5fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    neon_blue royal_blue (63)
  </span>
</li>
<li>
  <span style="background-color: #5f8700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    limeade (64)
  </span>
</li>
<li>
  <span style="background-color: #5f875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hippie_green (65)
  </span>
</li>
<li>
  <span style="background-color: #5f8787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hoki (66)
  </span>
</li>
<li>
  <span style="background-color: #5f87af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    steel_blue air_force_blue (67)
  </span>
</li>
<li>
  <span style="background-color: #5f87d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    picton_blue (68)
  </span>
</li>
<li>
  <span style="background-color: #5f87ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cornflower_blue light_slate_blue (69)
  </span>
</li>
<li>
  <span style="background-color: #5faf00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color70 (70)
  </span>
</li>
<li>
  <span style="background-color: #5faf5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    fern (71)
  </span>
</li>
<li>
  <span style="background-color: #5faf87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cadet_blue keppel (72)
  </span>
</li>
<li>
  <span style="background-color: #5fafaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    fountain_blue (73)
  </span>
</li>
<li>
  <span style="background-color: #5fafd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    shakespeare (74)
  </span>
</li>
<li>
  <span style="background-color: #5fafff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    maya_blue (75)
  </span>
</li>
<li>
  <span style="background-color: #5fd700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bright_green (76)
  </span>
</li>
<li>
  <span style="background-color: #5fd75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color77 (77)
  </span>
</li>
<li>
  <span style="background-color: #5fd787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pastel_green (78)
  </span>
</li>
<li>
  <span style="background-color: #5fd7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color79 (79)
  </span>
</li>
<li>
  <span style="background-color: #5fd7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_turquoise (80)
  </span>
</li>
<li>
  <span style="background-color: #5fd7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    malibu (81)
  </span>
</li>
<li>
  <span style="background-color: #5fff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color82 (82)
  </span>
</li>
<li>
  <span style="background-color: #5fff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    screamin_green (83)
  </span>
</li>
<li>
  <span style="background-color: #5fff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color84 (84)
  </span>
</li>
<li>
  <span style="background-color: #5fffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color85 (85)
  </span>
</li>
<li>
  <span style="background-color: #5fffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color86 (86)
  </span>
</li>
<li>
  <span style="background-color: #5fffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    baby_blue (87)
  </span>
</li>
<li>
  <span style="background-color: #870000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_red (88)
  </span>
</li>
<li>
  <span style="background-color: #87005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    eggplant (89)
  </span>
</li>
<li>
  <span style="background-color: #870087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_magenta (90)
  </span>
</li>
<li>
  <span style="background-color: #8700af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color91 (91)
  </span>
</li>
<li>
  <span style="background-color: #8700d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_violet (92)
  </span>
</li>
<li>
  <span style="background-color: #8700ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    electric_violet (93)
  </span>
</li>
<li>
  <span style="background-color: #875f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    brown (94)
  </span>
</li>
<li>
  <span style="background-color: #875f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_wood (95)
  </span>
</li>
<li>
  <span style="background-color: #875f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    trendy_pink (96)
  </span>
</li>
<li>
  <span style="background-color: #875faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    blue_marguerite (97)
  </span>
</li>
<li>
  <span style="background-color: #875fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color98 (98)
  </span>
</li>
<li>
  <span style="background-color: #875fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color99 (99)
  </span>
</li>
<li>
  <span style="background-color: #878700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    olive (100)
  </span>
</li>
<li>
  <span style="background-color: #87875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bandicoot (101)
  </span>
</li>
<li>
  <span style="background-color: #878787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color102 (102)
  </span>
</li>
<li>
  <span style="background-color: #8787af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    ship_cove light_slate_grey (103)
  </span>
</li>
<li>
  <span style="background-color: #8787d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_purple portage (104)
  </span>
</li>
<li>
  <span style="background-color: #8787ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color105 (105)
  </span>
</li>
<li>
  <span style="background-color: #87af00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    citrus (106)
  </span>
</li>
<li>
  <span style="background-color: #87af5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    chelsea_cucumber (107)
  </span>
</li>
<li>
  <span style="background-color: #87af87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_sea_green (108)
  </span>
</li>
<li>
  <span style="background-color: #87afaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    ziggurat (109)
  </span>
</li>
<li>
  <span style="background-color: #87afd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    seagull (110)
  </span>
</li>
<li>
  <span style="background-color: #87afff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color111 (111)
  </span>
</li>
<li>
  <span style="background-color: #87d700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    lawn_green (112)
  </span>
</li>
<li>
  <span style="background-color: #87d75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color113 (113)
  </span>
</li>
<li>
  <span style="background-color: #87d787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    gossip (114)
  </span>
</li>
<li>
  <span style="background-color: #87d7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bermuda (115)
  </span>
</li>
<li>
  <span style="background-color: #87d7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    riptide (116)
  </span>
</li>
<li>
  <span style="background-color: #87d7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    columbia_blue (117)
  </span>
</li>
<li>
  <span style="background-color: #87ff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    chartreuse (118)
  </span>
</li>
<li>
  <span style="background-color: #87ff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color119 (119)
  </span>
</li>
<li>
  <span style="background-color: #87ff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mint_green (120)
  </span>
</li>
<li>
  <span style="background-color: #87ffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pale_green (121)
  </span>
</li>
<li>
  <span style="background-color: #87ffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color122 (122)
  </span>
</li>
<li>
  <span style="background-color: #87ffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    electric_blue (123)
  </span>
</li>
<li>
  <span style="background-color: #af0000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    free_speech_red (124)
  </span>
</li>
<li>
  <span style="background-color: #af005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    flirt (125)
  </span>
</li>
<li>
  <span style="background-color: #af0087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_violet_red (126)
  </span>
</li>
<li>
  <span style="background-color: #af00af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    deep_magenta (127)
  </span>
</li>
<li>
  <span style="background-color: #af00d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color128 (128)
  </span>
</li>
<li>
  <span style="background-color: #af00ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    electric_purple (129)
  </span>
</li>
<li>
  <span style="background-color: #af5f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tenne rose_of_sharon (130)
  </span>
</li>
<li>
  <span style="background-color: #af5f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    coral_tree (131)
  </span>
</li>
<li>
  <span style="background-color: #af5f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tapestry (132)
  </span>
</li>
<li>
  <span style="background-color: #af5faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    violet_blue (133)
  </span>
</li>
<li>
  <span style="background-color: #af5fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    medium_orchid (134)
  </span>
</li>
<li>
  <span style="background-color: #af5fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color135 (135)
  </span>
</li>
<li>
  <span style="background-color: #af8700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_goldenrod (136)
  </span>
</li>
<li>
  <span style="background-color: #af875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    teak (137)
  </span>
</li>
<li>
  <span style="background-color: #af8787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    rosy_brown thatch (138)
  </span>
</li>
<li>
  <span style="background-color: #af87af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    london_hue (139)
  </span>
</li>
<li>
  <span style="background-color: #af87d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    wisteria (140)
  </span>
</li>
<li>
  <span style="background-color: #af87ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color141 (141)
  </span>
</li>
<li>
  <span style="background-color: #afaf00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    buddha_gold (142)
  </span>
</li>
<li>
  <span style="background-color: #afaf5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    olive_green dark_khaki (143)
  </span>
</li>
<li>
  <span style="background-color: #afaf87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    neutral_green (144)
  </span>
</li>
<li>
  <span style="background-color: #afafaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_gray (145)
  </span>
</li>
<li>
  <span style="background-color: #afafd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    moon_raker (146)
  </span>
</li>
<li>
  <span style="background-color: #afafff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_steel_blue (147)
  </span>
</li>
<li>
  <span style="background-color: #afd700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    spring_bud (148)
  </span>
</li>
<li>
  <span style="background-color: #afd75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    conifer (149)
  </span>
</li>
<li>
  <span style="background-color: #afd787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    feijoa (150)
  </span>
</li>
<li>
  <span style="background-color: #afd7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    chinook (151)
  </span>
</li>
<li>
  <span style="background-color: #afd7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    scandal (152)
  </span>
</li>
<li>
  <span style="background-color: #afd7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    anakiwa (153)
  </span>
</li>
<li>
  <span style="background-color: #afff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    green_yellow (154)
  </span>
</li>
<li>
  <span style="background-color: #afff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color155 (155)
  </span>
</li>
<li>
  <span style="background-color: #afff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color156 (156)
  </span>
</li>
<li>
  <span style="background-color: #afffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color157 (157)
  </span>
</li>
<li>
  <span style="background-color: #afffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    aero_blue (158)
  </span>
</li>
<li>
  <span style="background-color: #afffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    french_pass (159)
  </span>
</li>
<li>
  <span style="background-color: #d70000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    guardsman_red (160)
  </span>
</li>
<li>
  <span style="background-color: #d7005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    razzmatazz (161)
  </span>
</li>
<li>
  <span style="background-color: #d70087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hollywood_cerise (162)
  </span>
</li>
<li>
  <span style="background-color: #d700af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color163 (163)
  </span>
</li>
<li>
  <span style="background-color: #d700d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    purple_pizzazz (164)
  </span>
</li>
<li>
  <span style="background-color: #d700ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    psychedelic_purple (165)
  </span>
</li>
<li>
  <span style="background-color: #d75f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tenn (166)
  </span>
</li>
<li>
  <span style="background-color: #d75f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    indian_red roman (167)
  </span>
</li>
<li>
  <span style="background-color: #d75f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pale_violet_red (168)
  </span>
</li>
<li>
  <span style="background-color: #d75faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hopbush (169)
  </span>
</li>
<li>
  <span style="background-color: #d75fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    orchid (170)
  </span>
</li>
<li>
  <span style="background-color: #d75fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    heliotrope (171)
  </span>
</li>
<li>
  <span style="background-color: #d78700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mango_tango chocolate (172)
  </span>
</li>
<li>
  <span style="background-color: #d7875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    copper (173)
  </span>
</li>
<li>
  <span style="background-color: #d78787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    my_pink (174)
  </span>
</li>
<li>
  <span style="background-color: #d787af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    kobi (175)
  </span>
</li>
<li>
  <span style="background-color: #d787d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    plum (176)
  </span>
</li>
<li>
  <span style="background-color: #d787ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    violet (177)
  </span>
</li>
<li>
  <span style="background-color: #d7af00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    goldenrod golden_poppy corn (178)
  </span>
</li>
<li>
  <span style="background-color: #d7af5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    equator (179)
  </span>
</li>
<li>
  <span style="background-color: #d7af87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tan calico (180)
  </span>
</li>
<li>
  <span style="background-color: #d7afaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pink_flare (181)
  </span>
</li>
<li>
  <span style="background-color: #d7afd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    french_lilac (182)
  </span>
</li>
<li>
  <span style="background-color: #d7afff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mauve (183)
  </span>
</li>
<li>
  <span style="background-color: #d7d700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    school_bus_yellow (184)
  </span>
</li>
<li>
  <span style="background-color: #d7d75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tacha (185)
  </span>
</li>
<li>
  <span style="background-color: #d7d787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    deco (186)
  </span>
</li>
<li>
  <span style="background-color: #d7d7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    aths_special (187)
  </span>
</li>
<li>
  <span style="background-color: #d7d7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_grey light_gray (188)
  </span>
</li>
<li>
  <span style="background-color: #d7d7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    lavender_blue (189)
  </span>
</li>
<li>
  <span style="background-color: #d7ff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    chartreuse_yellow (190)
  </span>
</li>
<li>
  <span style="background-color: #d7ff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    laser_lemon (191)
  </span>
</li>
<li>
  <span style="background-color: #d7ff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    canary (192)
  </span>
</li>
<li>
  <span style="background-color: #d7ffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    reef (193)
  </span>
</li>
<li>
  <span style="background-color: #d7ffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    honeydew beige (194)
  </span>
</li>
<li>
  <span style="background-color: #d7ffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    oyster_bay (195)
  </span>
</li>
<li>
  <span style="background-color: #ff0000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color196 (196)
  </span>
</li>
<li>
  <span style="background-color: #ff005f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    rose (197)
  </span>
</li>
<li>
  <span style="background-color: #ff0087; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    deep_pink (198)
  </span>
</li>
<li>
  <span style="background-color: #ff00af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color199 (199)
  </span>
</li>
<li>
  <span style="background-color: #ff00d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hot_magenta (200)
  </span>
</li>
<li>
  <span style="background-color: #ff00ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    fuchsia (201)
  </span>
</li>
<li>
  <span style="background-color: #ff5f00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    orange_red safety_orange (202)
  </span>
</li>
<li>
  <span style="background-color: #ff5f5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    bittersweet (203)
  </span>
</li>
<li>
  <span style="background-color: #ff5f87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    wild_watermelon (204)
  </span>
</li>
<li>
  <span style="background-color: #ff5faf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hot_pink (205)
  </span>
</li>
<li>
  <span style="background-color: #ff5fd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    neon_pink (206)
  </span>
</li>
<li>
  <span style="background-color: #ff5fff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    pink_flamingo (207)
  </span>
</li>
<li>
  <span style="background-color: #ff8700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dark_orange (208)
  </span>
</li>
<li>
  <span style="background-color: #ff875f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    coral (209)
  </span>
</li>
<li>
  <span style="background-color: #ff8787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    light_coral mona_lisa (210)
  </span>
</li>
<li>
  <span style="background-color: #ff87af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    tickle_me_pink (211)
  </span>
</li>
<li>
  <span style="background-color: #ff87d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color212 (212)
  </span>
</li>
<li>
  <span style="background-color: #ff87ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    fuchsia_pink (213)
  </span>
</li>
<li>
  <span style="background-color: #ffaf00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    orange (214)
  </span>
</li>
<li>
  <span style="background-color: #ffaf5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    sandy_brown rajah (215)
  </span>
</li>
<li>
  <span style="background-color: #ffaf87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    hit_pink macaroni_and_cheese (216)
  </span>
</li>
<li>
  <span style="background-color: #ffafaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    melon (217)
  </span>
</li>
<li>
  <span style="background-color: #ffafd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cotton_candy (218)
  </span>
</li>
<li>
  <span style="background-color: #ffafff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    lavender_rose (219)
  </span>
</li>
<li>
  <span style="background-color: #ffd700; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    gold (220)
  </span>
</li>
<li>
  <span style="background-color: #ffd75f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dandelion (221)
  </span>
</li>
<li>
  <span style="background-color: #ffd787; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    khaki salomie (222)
  </span>
</li>
<li>
  <span style="background-color: #ffd7af; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    moccasin navajo_white (223)
  </span>
</li>
<li>
  <span style="background-color: #ffd7d7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mysty_rose (224)
  </span>
</li>
<li>
  <span style="background-color: #ffd7ff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    lavender_blush (225)
  </span>
</li>
<li>
  <span style="background-color: #ffff00; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color226 (226)
  </span>
</li>
<li>
  <span style="background-color: #ffff5f; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color227 (227)
  </span>
</li>
<li>
  <span style="background-color: #ffff87; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dolly (228)
  </span>
</li>
<li>
  <span style="background-color: #ffffaf; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    portafino (229)
  </span>
</li>
<li>
  <span style="background-color: #ffffd7; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cream cumulus (230)
  </span>
</li>
<li>
  <span style="background-color: #ffffff; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color231 (231)
  </span>
</li>
<li>
  <span style="background-color: #080808; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    cod_gray (232)
  </span>
</li>
<li>
  <span style="background-color: #121212; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color233 (233)
  </span>
</li>
<li>
  <span style="background-color: #1c1c1c; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    nero (234)
  </span>
</li>
<li>
  <span style="background-color: #262626; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mine_shaft (235)
  </span>
</li>
<li>
  <span style="background-color: #303030; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    night_rider (236)
  </span>
</li>
<li>
  <span style="background-color: #3a3a3a; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    eclipse (237)
  </span>
</li>
<li>
  <span style="background-color: #444444; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    charcoal tundora (238)
  </span>
</li>
<li>
  <span style="background-color: #4e4e4e; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    matterhorn (239)
  </span>
</li>
<li>
  <span style="background-color: #585858; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mortar scorpion (240)
  </span>
</li>
<li>
  <span style="background-color: #626262; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dove_gray (241)
  </span>
</li>
<li>
  <span style="background-color: #6c6c6c; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color242 (242)
  </span>
</li>
<li>
  <span style="background-color: #767676; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    empress (243)
  </span>
</li>
<li>
  <span style="background-color: #808080; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    grey gray (244)
  </span>
</li>
<li>
  <span style="background-color: #8a8a8a; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    suva_grey (245)
  </span>
</li>
<li>
  <span style="background-color: #949494; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    dusty_gray (246)
  </span>
</li>
<li>
  <span style="background-color: #9e9e9e; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    silver_chalice (247)
  </span>
</li>
<li>
  <span style="background-color: #a8a8a8; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color248 (248)
  </span>
</li>
<li>
  <span style="background-color: #b2b2b2; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color249 (249)
  </span>
</li>
<li>
  <span style="background-color: #bcbcbc; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    silver (250)
  </span>
</li>
<li>
  <span style="background-color: #c6c6c6; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color251 (251)
  </span>
</li>
<li>
  <span style="background-color: #d0d0d0; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    alto (252)
  </span>
</li>
<li>
  <span style="background-color: #dadada; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    color253 (253)
  </span>
</li>
<li>
  <span style="background-color: #e4e4e4; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    mercury gainsboro (254)
  </span>
</li>
<li>
  <span style="background-color: #eeeeee; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    white_smoke gallery (255)
  </span>
</li>
=======
- ![?](/images/000000.png) `:black` (0)
- ![?](/images/800000.png) `:red` `:maroon` (1)
- ![?](/images/008000.png) `:green` (2)
- ![?](/images/808000.png) `:yellow` (3)
- ![?](/images/000080.png) `:blue` `:navy` (4)
- ![?](/images/800080.png) `:magenta` `:purple` `:fresh_eggplant` (5)
- ![?](/images/008080.png) `:cyan` `:teal` (6)
- ![?](/images/c0c0c0.png) `:white` (7)
- ![?](/images/808080.png) `:light_black` (8)
- ![?](/images/ff0000.png) `:light_red` (9)
- ![?](/images/00ff00.png) `:light_green` `:lime` (10)
- ![?](/images/ffff00.png) `:light_yellow` (11)
- ![?](/images/0000ff.png) `:light_blue` (12)
- ![?](/images/ff00ff.png) `:light_magenta` (13)
- ![?](/images/00ffff.png) `:light_cyan` (14)
- ![?](/images/ffffff.png) `:light_white` (15)
- ![?](/images/000000.png) `:color16` (16)
- ![?](/images/00005f.png) `:stratos` (17)
- ![?](/images/000087.png) `:dark_blue` (18)
- ![?](/images/0000af.png) `:new_midnight_blue` (19)
- ![?](/images/0000d7.png) `:medium_blue` (20)
- ![?](/images/0000ff.png) `:color21` (21)
- ![?](/images/005f00.png) `:dark_green` `:camarone` (22)
- ![?](/images/005f5f.png) `:blue_stone` `:dark_slate_gray` `:mosque` (23)
- ![?](/images/005f87.png) `:blue_lagoon` `:orient` (24)
- ![?](/images/005faf.png) `:cobalt` `:endeavour` (25)
- ![?](/images/005fd7.png) `:navy_blue` `:science_blue` (26)
- ![?](/images/005fff.png) `:blue_ribbon` (27)
- ![?](/images/008700.png) `:japanese_laurel` (28)
- ![?](/images/00875f.png) `:deep_sea` `:observatory` (29)
- ![?](/images/008787.png) `:dark_cyan` (30)
- ![?](/images/0087af.png) `:cerulean` (31)
- ![?](/images/0087d7.png) `:pacific_blue` (32)
- ![?](/images/0087ff.png) `:dodger_blue` (33)
- ![?](/images/00af00.png) `:islamic_green` (34)
- ![?](/images/00af5f.png) `:jade` (35)
- ![?](/images/00af87.png) `:persian_green` (36)
- ![?](/images/00afaf.png) `:bondi_blue` `:light_sea_green` (37)
- ![?](/images/00afd7.png) `:iris_blue` (38)
- ![?](/images/00afff.png) `:deep_sky_blue` (39)
- ![?](/images/00d700.png) `:color40` (40)
- ![?](/images/00d75f.png) `:malachite` (41)
- ![?](/images/00d787.png) `:caribbean_green` (42)
- ![?](/images/00d7af.png) `:color43` (43)
- ![?](/images/00d7d7.png) `:dark_turquoise` (44)
- ![?](/images/00d7ff.png) `:color45` (45)
- ![?](/images/00ff00.png) `:color46` (46)
- ![?](/images/00ff5f.png) `:color47` (47)
- ![?](/images/00ff87.png) `:spring_green` (48)
- ![?](/images/00ffaf.png) `:medium_spring_green` (49)
- ![?](/images/00ffd7.png) `:bright_turquoise` (50)
- ![?](/images/00ffff.png) `:aqua` (51)
- ![?](/images/5f0000.png) `:rosewood` (52)
- ![?](/images/5f005f.png) `:tyrian_purple` (53)
- ![?](/images/5f0087.png) `:indigo` (54)
- ![?](/images/5f00af.png) `:color55` (55)
- ![?](/images/5f00d7.png) `:electric_indigo` (56)
- ![?](/images/5f00ff.png) `:blue_violet` (57)
- ![?](/images/5f5f00.png) `:verdun_green` (58)
- ![?](/images/5f5f5f.png) `:dim_gray` (59)
- ![?](/images/5f5f87.png) `:kimberly` (60)
- ![?](/images/5f5faf.png) `:rich_blue` (61)
- ![?](/images/5f5fd7.png) `:slate_blue` (62)
- ![?](/images/5f5fff.png) `:neon_blue` `:royal_blue` (63)
- ![?](/images/5f8700.png) `:limeade` (64)
- ![?](/images/5f875f.png) `:hippie_green` (65)
- ![?](/images/5f8787.png) `:hoki` (66)
- ![?](/images/5f87af.png) `:steel_blue` `:air_force_blue` (67)
- ![?](/images/5f87d7.png) `:picton_blue` (68)
- ![?](/images/5f87ff.png) `:cornflower_blue` `:light_slate_blue` (69)
- ![?](/images/5faf00.png) `:color70` (70)
- ![?](/images/5faf5f.png) `:fern` (71)
- ![?](/images/5faf87.png) `:cadet_blue` `:keppel` (72)
- ![?](/images/5fafaf.png) `:fountain_blue` (73)
- ![?](/images/5fafd7.png) `:shakespeare` (74)
- ![?](/images/5fafff.png) `:maya_blue` (75)
- ![?](/images/5fd700.png) `:bright_green` (76)
- ![?](/images/5fd75f.png) `:color77` (77)
- ![?](/images/5fd787.png) `:pastel_green` (78)
- ![?](/images/5fd7af.png) `:color79` (79)
- ![?](/images/5fd7d7.png) `:medium_turquoise` (80)
- ![?](/images/5fd7ff.png) `:malibu` (81)
- ![?](/images/5fff00.png) `:color82` (82)
- ![?](/images/5fff5f.png) `:screamin_green` (83)
- ![?](/images/5fff87.png) `:color84` (84)
- ![?](/images/5fffaf.png) `:color85` (85)
- ![?](/images/5fffd7.png) `:color86` (86)
- ![?](/images/5fffff.png) `:baby_blue` (87)
- ![?](/images/870000.png) `:dark_red` (88)
- ![?](/images/87005f.png) `:eggplant` (89)
- ![?](/images/870087.png) `:dark_magenta` (90)
- ![?](/images/8700af.png) `:color91` (91)
- ![?](/images/8700d7.png) `:dark_violet` (92)
- ![?](/images/8700ff.png) `:electric_violet` (93)
- ![?](/images/875f00.png) `:brown` (94)
- ![?](/images/875f5f.png) `:light_wood` (95)
- ![?](/images/875f87.png) `:trendy_pink` (96)
- ![?](/images/875faf.png) `:blue_marguerite` (97)
- ![?](/images/875fd7.png) `:color98` (98)
- ![?](/images/875fff.png) `:color99` (99)
- ![?](/images/878700.png) `:olive` (100)
- ![?](/images/87875f.png) `:bandicoot` (101)
- ![?](/images/878787.png) `:color102` (102)
- ![?](/images/8787af.png) `:ship_cove` `:light_slate_grey` (103)
- ![?](/images/8787d7.png) `:medium_purple` `:portage` (104)
- ![?](/images/8787ff.png) `:color105` (105)
- ![?](/images/87af00.png) `:citrus` (106)
- ![?][87af5f] `:chelsea_cucumber` (107)
- ![?](/images/87af87.png) `:dark_sea_green` (108)
- ![?](/images/87afaf.png) `:ziggurat` (109)
- ![?](/images/87afd7.png) `:seagull` (110)
- ![?](/images/87afff.png) `:color111` (111)
- ![?](/images/87d700.png) `:lawn_green` (112)
- ![?](/images/87d75f.png) `:color113` (113)
- ![?](/images/87d787.png) `:gossip` (114)
- ![?](/images/87d7af.png) `:bermuda` (115)
- ![?](/images/87d7d7.png) `:riptide` (116)
- ![?](/images/87d7ff.png) `:columbia_blue` (117)
- ![?](/images/87ff00.png) `:chartreuse` (118)
- ![?](/images/87ff5f.png) `:color119` (119)
- ![?](/images/87ff87.png) `:mint_green` (120)
- ![?](/images/87ffaf.png) `:pale_green` (121)
- ![?](/images/87ffd7.png) `:color122` (122)
- ![?](/images/87ffff.png) `:electric_blue` (123)
- ![?](/images/af0000.png) `:free_speech_red` (124)
- ![?](/images/af005f.png) `:flirt` (125)
- ![?](/images/af0087.png) `:medium_violet_red` (126)
- ![?](/images/af00af.png) `:deep_magenta` (127)
- ![?](/images/af00d7.png) `:color128` (128)
- ![?](/images/af00ff.png) `:electric_purple` (129)
- ![?](/images/af5f00.png) `:tenne` `:rose_of_sharon` (130)
- ![?](/images/af5f5f.png) `:coral_tree` (131)
- ![?](/images/af5f87.png) `:tapestry` (132)
- ![?](/images/af5faf.png) `:violet_blue` (133)
- ![?](/images/af5fd7.png) `:medium_orchid` (134)
- ![?](/images/af5fff.png) `:color135` (135)
- ![?](/images/af8700.png) `:dark_goldenrod` (136)
- ![?](/images/af875f.png) `:teak` (137)
- ![?](/images/af8787.png) `:rosy_brown` `:thatch` (138)
- ![?](/images/af87af.png) `:london_hue` (139)
- ![?][af87d7] `:wisteria` (140)
- ![?](/images/af87ff.png) `:color141` (141)
- ![?](/images/afaf00.png) `:buddha_gold` (142)
- ![?][afaf5f] `:olive_green` `:dark_khaki` (143)
- ![?](/images/afaf87.png) `:neutral_green` (144)
- ![?][afafaf] `:dark_gray` (145)
- ![?](/images/afafd7.png) `:moon_raker` (146)
- ![?](/images/afafff.png) `:light_steel_blue` (147)
- ![?](/images/afd700.png) `:spring_bud` (148)
- ![?](/images/afd75f.png) `:conifer` (149)
- ![?](/images/afd787.png) `:feijoa` (150)
- ![?](/images/afd7af.png) `:chinook` (151)
- ![?](/images/afd7d7.png) `:scandal` (152)
- ![?](/images/afd7ff.png) `:anakiwa` (153)
- ![?](/images/afff00.png) `:green_yellow` (154)
- ![?](/images/afff5f.png) `:color155` (155)
- ![?](/images/afff87.png) `:color156` (156)
- ![?](/images/afffaf.png) `:color157` (157)
- ![?](/images/afffd7.png) `:aero_blue` (158)
- ![?](/images/afffff.png) `:french_pass` (159)
- ![?](/images/d70000.png) `:guardsman_red` (160)
- ![?](/images/d7005f.png) `:razzmatazz` (161)
- ![?](/images/d70087.png) `:hollywood_cerise` (162)
- ![?](/images/d700af.png) `:color163` (163)
- ![?](/images/d700d7.png) `:purple_pizzazz` (164)
- ![?](/images/d700ff.png) `:psychedelic_purple` (165)
- ![?](/images/d75f00.png) `:tenn` (166)
- ![?](/images/d75f5f.png) `:indian_red` `:roman` (167)
- ![?](/images/d75f87.png) `:pale_violet_red` (168)
- ![?](/images/d75faf.png) `:hopbush` (169)
- ![?](/images/d75fd7.png) `:orchid` (170)
- ![?](/images/d75fff.png) `:heliotrope` (171)
- ![?](/images/d78700.png) `:mango_tango` `:chocolate` (172)
- ![?](/images/d7875f.png) `:copper` (173)
- ![?](/images/d78787.png) `:my_pink` (174)
- ![?](/images/d787af.png) `:kobi` (175)
- ![?](/images/d787d7.png) `:plum` (176)
- ![?](/images/d787ff.png) `:violet` (177)
- ![?](/images/d7af00.png) `:goldenrod` `:golden_poppy` `:corn` (178)
- ![?](/images/d7af5f.png) `:equator` (179)
- ![?](/images/d7af87.png) `:tan` `:calico` (180)
- ![?](/images/d7afaf.png) `:pink_flare` (181)
- ![?](/images/d7afd7.png) `:french_lilac` (182)
- ![?](/images/d7afff.png) `:mauve` (183)
- ![?](/images/d7d700.png) `:school_bus_yellow` (184)
- ![?](/images/d7d75f.png) `:tacha` (185)
- ![?](/images/d7d787.png) `:deco` (186)
- ![?](/images/d7d7af.png) `:aths_special` (187)
- ![?](/images/d7d7d7.png) `:light_grey` `:light_gray` (188)
- ![?](/images/d7d7ff.png) `:lavender_blue` (189)
- ![?](/images/d7ff00.png) `:chartreuse_yellow` (190)
- ![?](/images/d7ff5f.png) `:laser_lemon` (191)
- ![?](/images/d7ff87.png) `:canary` (192)
- ![?](/images/d7ffaf.png) `:reef` (193)
- ![?](/images/d7ffd7.png) `:honeydew` `:beige` (194)
- ![?](/images/d7ffff.png) `:oyster_bay` (195)
- ![?](/images/ff0000.png) `:color196` (196)
- ![?](/images/ff005f.png) `:rose` (197)
- ![?](/images/ff0087.png) `:deep_pink` (198)
- ![?](/images/ff00af.png) `:color199` (199)
- ![?][ff00d7] `:hot_magenta` (200)
- ![?](/images/ff00ff.png) `:fuchsia` (201)
- ![?][ff5f00] `:orange_red` `:safety_orange` (202)
- ![?][ff5f5f] `:bittersweet` (203)
- ![?][ff5f87] `:wild_watermelon` (204)
- ![?][ff5faf] `:hot_pink` (205)
- ![?][ff5fd7] `:neon_pink` (206)
- ![?](/images/ff5fff.png) `:pink_flamingo` (207)
- ![?](/images/ff8700.png) `:dark_orange` (208)
- ![?][ff875f] `:coral` (209)
- ![?](/images/ff8787.png) `:light_coral` `:mona_lisa` (210)
- ![?][ff87af] `:tickle_me_pink` (211)
- ![?](/images/ff87d7.png) `:color212` (212)
- ![?](/images/ff87ff.png) `:fuchsia_pink` (213)
- ![?](/images/ffaf00.png) `:orange` (214)
- ![?](/images/ffaf5f.png) `:sandy_brown` `:rajah` (215)
- ![?](/images/ffaf87.png) `:hit_pink` `:macaroni_and_cheese` (216)
- ![?][ffafaf] `:melon` (217)
- ![?][ffafd7] `:cotton_candy` (218)
- ![?][ffafff] `:lavender_rose` (219)
- ![?][ffd700] `:gold` (220)
- ![?][ffd75f] `:dandelion` (221)
- ![?][ffd787] `:khaki` `:salomie` (222)
- ![?][ffd7af] `:moccasin` `:navajo_white` (223)
- ![?][ffd7d7] `:mysty_rose` (224)
- ![?][ffd7ff] `:lavender_blush` (225)
- ![?](/images/ffff00.png) `:color226` (226)
- ![?][ffff5f] `:color227` (227)
- ![?][ffff87] `:dolly` (228)
- ![?][ffffaf] `:portafino` (229)
- ![?][ffffd7] `:cream` `:cumulus` (230)
- ![?](/images/ffffff.png) `:color231` (231)
- ![?][080808] `:cod_gray` (232)
- ![?][121212] `:color233` (233)
- ![?][1c1c1c] `:nero` (234)
- ![?][262626] `:mine_shaft` (235)
- ![?](/images/303030.png) `:night_rider` (236)
- ![?](/images/3a3a3a.png) `:eclipse` (237)
- ![?](/images/444444.png) `:charcoal` `:tundora` (238)
- ![?](/images/4e4e4e.png) `:matterhorn` (239)
- ![?](/images/585858.png) `:mortar` `:scorpion` (240)
- ![?](/images/626262.png) `:dove_gray` (241)
- ![?](/images/6c6c6c.png) `:color242` (242)
- ![?](/images/767676.png) `:empress` (243)
- ![?](/images/808080.png) `:grey` `:gray` (244)
- ![?](/images/8a8a8a.png) `:suva_grey` (245)
- ![?](/images/949494.png) `:dusty_gray` (246)
- ![?](/images/9e9e9e.png) `:silver_chalice` (247)
- ![?](/images/a8a8a8.png) `:color248` (248)
- ![?](/images/b2b2b2.png) `:color249` (249)
- ![?](/images/bcbcbc.png) `:silver` (250)
- ![?](/images/c6c6c6.png) `:color251` (251)
- ![?](/images/d0d0d0.png) `:alto` (252)
- ![?](/images/dadada.png) `:color253` (253)
- ![?](/images/e4e4e4.png) `:mercury` `:gainsboro` (254)
- ![?](/images/eeeeee.png) `:white_smoke` `:gallery` (255)
>>>>>>> parent of 45171ef (0.1.46)

[IO.ANSI]: https://hexdocs.pm/elixir/IO.ANSI.html
[87af5f]: /images/87af5f.png
[af87d7]: /images/af87d7.png
[afaf5f]: /images/afaf5f.png
[afafaf]: /images/afafaf.png
[ff00d7]: /images/ff00d7.png
[ff5f00]: /images/ff5f00.png
[ff5f5f]: /images/ff5f5f.png
[ff5f87]: /images/ff5f87.png
[ff5faf]: /images/ff5faf.png
[ff5fd7]: /images/ff5fd7.png
[ff875f]: /images/ff875f.png
[ff87af]: /images/ff87af.png
[ffafaf]: /images/ffafaf.png
[ffafd7]: /images/ffafd7.png
[ffafff]: /images/ffafff.png
[ffd700]: /images/ffd700.png
[ffd75f]: /images/ffd75f.png
[ffd787]: /images/ffd787.png
[ffd7af]: /images/ffd7af.png
[ffd7d7]: /images/ffd7d7.png
[ffd7ff]: /images/ffd7ff.png
[ffff5f]: /images/ffff5f.png
[ffff87]: /images/ffff87.png
[ffffaf]: /images/ffffaf.png
[ffffd7]: /images/ffffd7.png
[080808]: /images/080808.png
[121212]: /images/121212.png
[1c1c1c]: /images/1c1c1c.png
[262626]: /images/262626.png
