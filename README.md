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
<li>
  <span style="background-color: #000000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    black (0)
  </span>
</li>
<li>
  <span style="background-color: #800000; padding-left: 6px; padding-right: 6px; margin-right: 6px; font-size: 9px;">
  </span>
  <span style="margin-left: 3px; font-family: Consolas;">
    red maroon (1)
  </span>
</li>
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

[IO.ANSI]: https://hexdocs.pm/elixir/IO.ANSI.html
