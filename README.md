# IO ANSI Plus

[![Build Status](https://travis-ci.org/RaymondLoranger/io_ansi_plus.svg?branch=master)](https://travis-ci.org/RaymondLoranger/io_ansi_plus)

Functionality to render ANSI escape sequences.
Clone of module `IO.ANSI` but supporting named Xterm colors.

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

In addition to the 16 regular ANSI colors<sup>[*](#footnote1)</sup> and
their background counterparts, this package also supports the 256 Xterm colors
(foreground and background).

Most of these 256 colors were given names like:
- ![#00ffff](https://placehold.it/15/00ffff/000000?text=+)`:aqua`
- ![#87ff00](https://placehold.it/15/87ff00/000000?text=+)`:chartreuse`
- ![#d700ff](https://placehold.it/15/d700ff/000000?text=+)`:psychedelic_purple`

You can use color number atoms for the few colors that are unnamed:

```elixir
alias IO.ANSI.Plus, as: ANSI
["Hello, ", :color163, "world!"] |> ANSI.format(true) |> IO.puts()
["Hello, ", :color163_background, "world!"] |> ANSI.format(true) |> IO.puts()
```

Any color can have multiple names, for example, `:moccasin` and `:navajo_white`.

For details, see file `config/persist_colors.exs`.

<sup><a name="footnote1">*</a></sup> Actually 8 colors and their "bright" variants.

## Customization

You can specify new color names by changing file `config/persist_colors.exs`.
<br>You would then need to run `mix deps.compile io_ansi_plus [--force]`
to make the changes effective.

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
## ![examples](images/io_ansi_plus_examples.png)

## Color Chart
## ![color_chart](images/color_chart.png)

## Color Samples
- ![#000000](https://placehold.it/15/000000/000000?text=+)`:color0` (0)
- ![#800000](https://placehold.it/15/800000/000000?text=+)`:maroon` (1)
- ![#008000](https://placehold.it/15/008000/000000?text=+)`:color2` (2)
- ![#808000](https://placehold.it/15/808000/000000?text=+)`:color3` (3)
- ![#000080](https://placehold.it/15/000080/000000?text=+)`:navy` (4)
- ![#800080](https://placehold.it/15/800080/000000?text=+)`:purple` `:fresh_eggplant` (5)
- ![#008080](https://placehold.it/15/008080/000000?text=+)`:teal` (6)
- ![#c0c0c0](https://placehold.it/15/c0c0c0/000000?text=+)`:color7` (7)
- ![#808080](https://placehold.it/15/808080/000000?text=+)`:color8` (8)
- ![#ff0000](https://placehold.it/15/ff0000/000000?text=+)`:color9` (9)
- ![#00ff00](https://placehold.it/15/00ff00/000000?text=+)`:lime` (10)
- ![#ffff00](https://placehold.it/15/ffff00/000000?text=+)`:color11` (11)
- ![#0000ff](https://placehold.it/15/0000ff/000000?text=+)`:color12` (12)
- ![#ff00ff](https://placehold.it/15/ff00ff/000000?text=+)`:color13` (13)
- ![#00ffff](https://placehold.it/15/00ffff/000000?text=+)`:color14` (14)
- ![#ffffff](https://placehold.it/15/ffffff/000000?text=+)`:color15` (15)
- ![#000000](https://placehold.it/15/000000/000000?text=+)`:color16` (16)
- ![#00005f](https://placehold.it/15/00005f/000000?text=+)`:stratos` (17)
- ![#000087](https://placehold.it/15/000087/000000?text=+)`:dark_blue` (18)
- ![#0000af](https://placehold.it/15/0000af/000000?text=+)`:new_midnight_blue` (19)
- ![#0000d7](https://placehold.it/15/0000d7/000000?text=+)`:medium_blue` (20)
- ![#0000ff](https://placehold.it/15/0000ff/000000?text=+)`:color21` (21)
- ![#005f00](https://placehold.it/15/005f00/000000?text=+)`:dark_green` `:camarone` (22)
- ![#005f5f](https://placehold.it/15/005f5f/000000?text=+)`:blue_stone` `:dark_slate_gray` `:mosque` (23)
- ![#005f87](https://placehold.it/15/005f87/000000?text=+)`:blue_lagoon` `:orient` (24)
- ![#005faf](https://placehold.it/15/005faf/000000?text=+)`:cobalt` `:endeavour` (25)
- ![#005fd7](https://placehold.it/15/005fd7/000000?text=+)`:navy_blue` `:science_blue` (26)
- ![#005fff](https://placehold.it/15/005fff/000000?text=+)`:blue_ribbon` (27)
- ![#008700](https://placehold.it/15/008700/000000?text=+)`:japanese_laurel` (28)
- ![#00875f](https://placehold.it/15/00875f/000000?text=+)`:deep_sea` `:observatory` (29)
- ![#008787](https://placehold.it/15/008787/000000?text=+)`:dark_cyan` (30)
- ![#0087af](https://placehold.it/15/0087af/000000?text=+)`:cerulean` (31)
- ![#0087d7](https://placehold.it/15/0087d7/000000?text=+)`:pacific_blue` (32)
- ![#0087ff](https://placehold.it/15/0087ff/000000?text=+)`:dodger_blue` (33)
- ![#00af00](https://placehold.it/15/00af00/000000?text=+)`:islamic_green` (34)
- ![#00af5f](https://placehold.it/15/00af5f/000000?text=+)`:jade` (35)
- ![#00af87](https://placehold.it/15/00af87/000000?text=+)`:persian_green` (36)
- ![#00afaf](https://placehold.it/15/00afaf/000000?text=+)`:bondi_blue` `:light_sea_green` (37)
- ![#00afd7](https://placehold.it/15/00afd7/000000?text=+)`:iris_blue` (38)
- ![#00afff](https://placehold.it/15/00afff/000000?text=+)`:deep_sky_blue` (39)
- ![#00d700](https://placehold.it/15/00d700/000000?text=+)`:color40` (40)
- ![#00d75f](https://placehold.it/15/00d75f/000000?text=+)`:malachite` (41)
- ![#00d787](https://placehold.it/15/00d787/000000?text=+)`:caribbean_green` (42)
- ![#00d7af](https://placehold.it/15/00d7af/000000?text=+)`:color43` (43)
- ![#00d7d7](https://placehold.it/15/00d7d7/000000?text=+)`:dark_turquoise` (44)
- ![#00d7ff](https://placehold.it/15/00d7ff/000000?text=+)`:color45` (45)
- ![#00ff00](https://placehold.it/15/00ff00/000000?text=+)`:color46` (46)
- ![#00ff5f](https://placehold.it/15/00ff5f/000000?text=+)`:color47` (47)
- ![#00ff87](https://placehold.it/15/00ff87/000000?text=+)`:spring_green` (48)
- ![#00ffaf](https://placehold.it/15/00ffaf/000000?text=+)`:medium_spring_green` (49)
- ![#00ffd7](https://placehold.it/15/00ffd7/000000?text=+)`:bright_turquoise` (50)
- ![#00ffff](https://placehold.it/15/00ffff/000000?text=+)`:aqua` (51)
- ![#5f0000](https://placehold.it/15/5f0000/000000?text=+)`:rosewood` (52)
- ![#5f005f](https://placehold.it/15/5f005f/000000?text=+)`:tyrian_purple` (53)
- ![#5f0087](https://placehold.it/15/5f0087/000000?text=+)`:indigo` (54)
- ![#5f00af](https://placehold.it/15/5f00af/000000?text=+)`:color55` (55)
- ![#5f00d7](https://placehold.it/15/5f00d7/000000?text=+)`:electric_indigo` (56)
- ![#5f00ff](https://placehold.it/15/5f00ff/000000?text=+)`:blue_violet` (57)
- ![#5f5f00](https://placehold.it/15/5f5f00/000000?text=+)`:verdun_green` (58)
- ![#5f5f5f](https://placehold.it/15/5f5f5f/000000?text=+)`:dim_gray` (59)
- ![#5f5f87](https://placehold.it/15/5f5f87/000000?text=+)`:kimberly` (60)
- ![#5f5faf](https://placehold.it/15/5f5faf/000000?text=+)`:rich_blue` (61)
- ![#5f5fd7](https://placehold.it/15/5f5fd7/000000?text=+)`:slate_blue` (62)
- ![#5f5fff](https://placehold.it/15/5f5fff/000000?text=+)`:neon_blue` `:royal_blue` (63)
- ![#5f8700](https://placehold.it/15/5f8700/000000?text=+)`:limeade` (64)
- ![#5f875f](https://placehold.it/15/5f875f/000000?text=+)`:hippie_green` (65)
- ![#5f8787](https://placehold.it/15/5f8787/000000?text=+)`:hoki` (66)
- ![#5f87af](https://placehold.it/15/5f87af/000000?text=+)`:steel_blue` `:air_force_blue` (67)
- ![#5f87d7](https://placehold.it/15/5f87d7/000000?text=+)`:picton_blue` (68)
- ![#5f87ff](https://placehold.it/15/5f87ff/000000?text=+)`:cornflower_blue` `:light_slate_blue` (69)
- ![#5faf00](https://placehold.it/15/5faf00/000000?text=+)`:color70` (70)
- ![#5faf5f](https://placehold.it/15/5faf5f/000000?text=+)`:fern` (71)
- ![#5faf87](https://placehold.it/15/5faf87/000000?text=+)`:cadet_blue` `:keppel` (72)
- ![#5fafaf](https://placehold.it/15/5fafaf/000000?text=+)`:fountain_blue` (73)
- ![#5fafd7](https://placehold.it/15/5fafd7/000000?text=+)`:shakespeare` (74)
- ![#5fafff](https://placehold.it/15/5fafff/000000?text=+)`:maya_blue` (75)
- ![#5fd700](https://placehold.it/15/5fd700/000000?text=+)`:bright_green` (76)
- ![#5fd75f](https://placehold.it/15/5fd75f/000000?text=+)`:color77` (77)
- ![#5fd787](https://placehold.it/15/5fd787/000000?text=+)`:pastel_green` (78)
- ![#5fd7af](https://placehold.it/15/5fd7af/000000?text=+)`:color79` (79)
- ![#5fd7d7](https://placehold.it/15/5fd7d7/000000?text=+)`:medium_turquoise` (80)
- ![#5fd7ff](https://placehold.it/15/5fd7ff/000000?text=+)`:malibu` (81)
- ![#5fff00](https://placehold.it/15/5fff00/000000?text=+)`:color82` (82)
- ![#5fff5f](https://placehold.it/15/5fff5f/000000?text=+)`:screamin_green` (83)
- ![#5fff87](https://placehold.it/15/5fff87/000000?text=+)`:color84` (84)
- ![#5fffaf](https://placehold.it/15/5fffaf/000000?text=+)`:color85` (85)
- ![#5fffd7](https://placehold.it/15/5fffd7/000000?text=+)`:color86` (86)
- ![#5fffff](https://placehold.it/15/5fffff/000000?text=+)`:baby_blue` (87)
- ![#870000](https://placehold.it/15/870000/000000?text=+)`:dark_red` (88)
- ![#87005f](https://placehold.it/15/87005f/000000?text=+)`:eggplant` (89)
- ![#870087](https://placehold.it/15/870087/000000?text=+)`:dark_magenta` (90)
- ![#8700af](https://placehold.it/15/8700af/000000?text=+)`:color91` (91)
- ![#8700d7](https://placehold.it/15/8700d7/000000?text=+)`:dark_violet` (92)
- ![#8700ff](https://placehold.it/15/8700ff/000000?text=+)`:electric_violet` (93)
- ![#875f00](https://placehold.it/15/875f00/000000?text=+)`:brown` (94)
- ![#875f5f](https://placehold.it/15/875f5f/000000?text=+)`:light_wood` (95)
- ![#875f87](https://placehold.it/15/875f87/000000?text=+)`:trendy_pink` (96)
- ![#875faf](https://placehold.it/15/875faf/000000?text=+)`:blue_marguerite` (97)
- ![#875fd7](https://placehold.it/15/875fd7/000000?text=+)`:color98` (98)
- ![#875fff](https://placehold.it/15/875fff/000000?text=+)`:color99` (99)
- ![#878700](https://placehold.it/15/878700/000000?text=+)`:olive` (100)
- ![#87875f](https://placehold.it/15/87875f/000000?text=+)`:bandicoot` (101)
- ![#878787](https://placehold.it/15/878787/000000?text=+)`:color102` (102)
- ![#8787af](https://placehold.it/15/8787af/000000?text=+)`:ship_cove` `:light_slate_grey` (103)
- ![#8787d7](https://placehold.it/15/8787d7/000000?text=+)`:medium_purple` `:portage` (104)
- ![#8787ff](https://placehold.it/15/8787ff/000000?text=+)`:color105` (105)
- ![#87af00](https://placehold.it/15/87af00/000000?text=+)`:citrus` (106)
- ![#87af5f](https://placehold.it/15/87af5f/000000?text=+)`:chelsea_cucumber` (107)
- ![#87af87](https://placehold.it/15/87af87/000000?text=+)`:dark_sea_green` (108)
- ![#87afaf](https://placehold.it/15/87afaf/000000?text=+)`:ziggurat` (109)
- ![#87afd7](https://placehold.it/15/87afd7/000000?text=+)`:seagull` (110)
- ![#87afff](https://placehold.it/15/87afff/000000?text=+)`:color111` (111)
- ![#87d700](https://placehold.it/15/87d700/000000?text=+)`:lawn_green` (112)
- ![#87d75f](https://placehold.it/15/87d75f/000000?text=+)`:color113` (113)
- ![#87d787](https://placehold.it/15/87d787/000000?text=+)`:gossip` (114)
- ![#87d7af](https://placehold.it/15/87d7af/000000?text=+)`:bermuda` (115)
- ![#87d7d7](https://placehold.it/15/87d7d7/000000?text=+)`:riptide` (116)
- ![#87d7ff](https://placehold.it/15/87d7ff/000000?text=+)`:columbia_blue` (117)
- ![#87ff00](https://placehold.it/15/87ff00/000000?text=+)`:chartreuse` (118)
- ![#87ff5f](https://placehold.it/15/87ff5f/000000?text=+)`:color119` (119)
- ![#87ff87](https://placehold.it/15/87ff87/000000?text=+)`:mint_green` (120)
- ![#87ffaf](https://placehold.it/15/87ffaf/000000?text=+)`:pale_green` (121)
- ![#87ffd7](https://placehold.it/15/87ffd7/000000?text=+)`:color122` (122)
- ![#87ffff](https://placehold.it/15/87ffff/000000?text=+)`:electric_blue` (123)
- ![#af0000](https://placehold.it/15/af0000/000000?text=+)`:free_speech_red` (124)
- ![#af005f](https://placehold.it/15/af005f/000000?text=+)`:flirt` (125)
- ![#af0087](https://placehold.it/15/af0087/000000?text=+)`:medium_violet_red` (126)
- ![#af00af](https://placehold.it/15/af00af/000000?text=+)`:deep_magenta` (127)
- ![#af00d7](https://placehold.it/15/af00d7/000000?text=+)`:color128` (128)
- ![#af00ff](https://placehold.it/15/af00ff/000000?text=+)`:electric_purple` (129)
- ![#af5f00](https://placehold.it/15/af5f00/000000?text=+)`:tenne` `:rose_of_sharon` (130)
- ![#af5f5f](https://placehold.it/15/af5f5f/000000?text=+)`:coral_tree` (131)
- ![#af5f87](https://placehold.it/15/af5f87/000000?text=+)`:tapestry` (132)
- ![#af5faf](https://placehold.it/15/af5faf/000000?text=+)`:violet_blue` (133)
- ![#af5fd7](https://placehold.it/15/af5fd7/000000?text=+)`:medium_orchid` (134)
- ![#af5fff](https://placehold.it/15/af5fff/000000?text=+)`:color135` (135)
- ![#af8700](https://placehold.it/15/af8700/000000?text=+)`:dark_goldenrod` (136)
- ![#af875f](https://placehold.it/15/af875f/000000?text=+)`:teak` (137)
- ![#af8787](https://placehold.it/15/af8787/000000?text=+)`:rosy_brown` `:thatch` (138)
- ![#af87af](https://placehold.it/15/af87af/000000?text=+)`:london_hue` (139)
- ![#af87d7](https://placehold.it/15/af87d7/000000?text=+)`:wisteria` (140)
- ![#af87ff](https://placehold.it/15/af87ff/000000?text=+)`:color141` (141)
- ![#afaf00](https://placehold.it/15/afaf00/000000?text=+)`:buddha_gold` (142)
- ![#afaf5f](https://placehold.it/15/afaf5f/000000?text=+)`:olive_green` `:dark_khaki` (143)
- ![#afaf87](https://placehold.it/15/afaf87/000000?text=+)`:neutral_green` (144)
- ![#afafaf](https://placehold.it/15/afafaf/000000?text=+)`:dark_gray` (145)
- ![#afafd7](https://placehold.it/15/afafd7/000000?text=+)`:moon_raker` (146)
- ![#afafff](https://placehold.it/15/afafff/000000?text=+)`:light_steel_blue` (147)
- ![#afd700](https://placehold.it/15/afd700/000000?text=+)`:spring_bud` (148)
- ![#afd75f](https://placehold.it/15/afd75f/000000?text=+)`:conifer` (149)
- ![#afd787](https://placehold.it/15/afd787/000000?text=+)`:feijoa` (150)
- ![#afd7af](https://placehold.it/15/afd7af/000000?text=+)`:chinook` (151)
- ![#afd7d7](https://placehold.it/15/afd7d7/000000?text=+)`:scandal` (152)
- ![#afd7ff](https://placehold.it/15/afd7ff/000000?text=+)`:anakiwa` (153)
- ![#afff00](https://placehold.it/15/afff00/000000?text=+)`:green_yellow` (154)
- ![#afff5f](https://placehold.it/15/afff5f/000000?text=+)`:color155` (155)
- ![#afff87](https://placehold.it/15/afff87/000000?text=+)`:color156` (156)
- ![#afffaf](https://placehold.it/15/afffaf/000000?text=+)`:color157` (157)
- ![#afffd7](https://placehold.it/15/afffd7/000000?text=+)`:aero_blue` (158)
- ![#afffff](https://placehold.it/15/afffff/000000?text=+)`:french_pass` (159)
- ![#d70000](https://placehold.it/15/d70000/000000?text=+)`:guardsman_red` (160)
- ![#d7005f](https://placehold.it/15/d7005f/000000?text=+)`:razzmatazz` (161)
- ![#d70087](https://placehold.it/15/d70087/000000?text=+)`:hollywood_cerise` (162)
- ![#d700af](https://placehold.it/15/d700af/000000?text=+)`:color163` (163)
- ![#d700d7](https://placehold.it/15/d700d7/000000?text=+)`:purple_pizzazz` (164)
- ![#d700ff](https://placehold.it/15/d700ff/000000?text=+)`:psychedelic_purple` (165)
- ![#d75f00](https://placehold.it/15/d75f00/000000?text=+)`:tenn` (166)
- ![#d75f5f](https://placehold.it/15/d75f5f/000000?text=+)`:indian_red` `:roman` (167)
- ![#d75f87](https://placehold.it/15/d75f87/000000?text=+)`:pale_violet_red` (168)
- ![#d75faf](https://placehold.it/15/d75faf/000000?text=+)`:hopbush` (169)
- ![#d75fd7](https://placehold.it/15/d75fd7/000000?text=+)`:orchid` (170)
- ![#d75fff](https://placehold.it/15/d75fff/000000?text=+)`:heliotrope` (171)
- ![#d78700](https://placehold.it/15/d78700/000000?text=+)`:mango_tango` `:chocolate` (172)
- ![#d7875f](https://placehold.it/15/d7875f/000000?text=+)`:copper` (173)
- ![#d78787](https://placehold.it/15/d78787/000000?text=+)`:my_pink` (174)
- ![#d787af](https://placehold.it/15/d787af/000000?text=+)`:kobi` (175)
- ![#d787d7](https://placehold.it/15/d787d7/000000?text=+)`:plum` (176)
- ![#d787ff](https://placehold.it/15/d787ff/000000?text=+)`:violet` (177)
- ![#d7af00](https://placehold.it/15/d7af00/000000?text=+)`:goldenrod` `:golden_poppy` `:corn` (178)
- ![#d7af5f](https://placehold.it/15/d7af5f/000000?text=+)`:equator` (179)
- ![#d7af87](https://placehold.it/15/d7af87/000000?text=+)`:tan` `:calico` (180)
- ![#d7afaf](https://placehold.it/15/d7afaf/000000?text=+)`:pink_flare` (181)
- ![#d7afd7](https://placehold.it/15/d7afd7/000000?text=+)`:french_lilac` (182)
- ![#d7afff](https://placehold.it/15/d7afff/000000?text=+)`:mauve` (183)
- ![#d7d700](https://placehold.it/15/d7d700/000000?text=+)`:school_bus_yellow` (184)
- ![#d7d75f](https://placehold.it/15/d7d75f/000000?text=+)`:tacha` (185)
- ![#d7d787](https://placehold.it/15/d7d787/000000?text=+)`:deco` (186)
- ![#d7d7af](https://placehold.it/15/d7d7af/000000?text=+)`:aths_special` (187)
- ![#d7d7d7](https://placehold.it/15/d7d7d7/000000?text=+)`:light_grey` `:light_gray` (188)
- ![#d7d7ff](https://placehold.it/15/d7d7ff/000000?text=+)`:lavender_blue` (189)
- ![#d7ff00](https://placehold.it/15/d7ff00/000000?text=+)`:chartreuse_yellow` (190)
- ![#d7ff5f](https://placehold.it/15/d7ff5f/000000?text=+)`:laser_lemon` (191)
- ![#d7ff87](https://placehold.it/15/d7ff87/000000?text=+)`:canary` (192)
- ![#d7ffaf](https://placehold.it/15/d7ffaf/000000?text=+)`:reef` (193)
- ![#d7ffd7](https://placehold.it/15/d7ffd7/000000?text=+)`:honeydew` `:beige` (194)
- ![#d7ffff](https://placehold.it/15/d7ffff/000000?text=+)`:oyster_bay` (195)
- ![#ff0000](https://placehold.it/15/ff0000/000000?text=+)`:color196` (196)
- ![#ff005f](https://placehold.it/15/ff005f/000000?text=+)`:rose` (197)
- ![#ff0087](https://placehold.it/15/ff0087/000000?text=+)`:deep_pink` (198)
- ![#ff00af](https://placehold.it/15/ff00af/000000?text=+)`:color199` (199)
- ![#ff00d7](https://placehold.it/15/ff00d7/000000?text=+)`:hot_magenta` (200)
- ![#ff00ff](https://placehold.it/15/ff00ff/000000?text=+)`:fuchsia` (201)
- ![#ff5f00](https://placehold.it/15/ff5f00/000000?text=+)`:orange_red` `:safety_orange` (202)
- ![#ff5f5f](https://placehold.it/15/ff5f5f/000000?text=+)`:bittersweet` (203)
- ![#ff5f87](https://placehold.it/15/ff5f87/000000?text=+)`:wild_watermelon` (204)
- ![#ff5faf](https://placehold.it/15/ff5faf/000000?text=+)`:hot_pink` (205)
- ![#ff5fd7](https://placehold.it/15/ff5fd7/000000?text=+)`:neon_pink` (206)
- ![#ff5fff](https://placehold.it/15/ff5fff/000000?text=+)`:pink_flamingo` (207)
- ![#ff8700](https://placehold.it/15/ff8700/000000?text=+)`:dark_orange` (208)
- ![#ff875f](https://placehold.it/15/ff875f/000000?text=+)`:coral` (209)
- ![#ff8787](https://placehold.it/15/ff8787/000000?text=+)`:light_coral` `:mona_lisa` (210)
- ![#ff87af](https://placehold.it/15/ff87af/000000?text=+)`:tickle_me_pink` (211)
- ![#ff87d7](https://placehold.it/15/ff87d7/000000?text=+)`:color212` (212)
- ![#ff87ff](https://placehold.it/15/ff87ff/000000?text=+)`:fuchsia_pink` (213)
- ![#ffaf00](https://placehold.it/15/ffaf00/000000?text=+)`:orange` (214)
- ![#ffaf5f](https://placehold.it/15/ffaf5f/000000?text=+)`:sandy_brown` `:rajah` (215)
- ![#ffaf87](https://placehold.it/15/ffaf87/000000?text=+)`:hit_pink` `:macaroni_and_cheese` (216)
- ![#ffafaf](https://placehold.it/15/ffafaf/000000?text=+)`:melon` (217)
- ![#ffafd7](https://placehold.it/15/ffafd7/000000?text=+)`:cotton_candy` (218)
- ![#ffafff](https://placehold.it/15/ffafff/000000?text=+)`:lavender_rose` (219)
- ![#ffd700](https://placehold.it/15/ffd700/000000?text=+)`:gold` (220)
- ![#ffd75f](https://placehold.it/15/ffd75f/000000?text=+)`:dandelion` (221)
- ![#ffd787](https://placehold.it/15/ffd787/000000?text=+)`:khaki` `:salomie` (222)
- ![#ffd7af](https://placehold.it/15/ffd7af/000000?text=+)`:moccasin` `:navajo_white` (223)
- ![#ffd7d7](https://placehold.it/15/ffd7d7/000000?text=+)`:mysty_rose` (224)
- ![#ffd7ff](https://placehold.it/15/ffd7ff/000000?text=+)`:lavender_blush` (225)
- ![#ffff00](https://placehold.it/15/ffff00/000000?text=+)`:color226` (226)
- ![#ffff5f](https://placehold.it/15/ffff5f/000000?text=+)`:color227` (227)
- ![#ffff87](https://placehold.it/15/ffff87/000000?text=+)`:dolly` (228)
- ![#ffffaf](https://placehold.it/15/ffffaf/000000?text=+)`:portafino` (229)
- ![#ffffd7](https://placehold.it/15/ffffd7/000000?text=+)`:cream` `:cumulus` (230)
- ![#ffffff](https://placehold.it/15/ffffff/000000?text=+)`:color231` (231)
- ![#080808](https://placehold.it/15/080808/000000?text=+)`:cod_gray` (232)
- ![#121212](https://placehold.it/15/121212/000000?text=+)`:color233` (233)
- ![#1c1c1c](https://placehold.it/15/1c1c1c/000000?text=+)`:nero` (234)
- ![#262626](https://placehold.it/15/262626/000000?text=+)`:mine_shaft` (235)
- ![#303030](https://placehold.it/15/303030/000000?text=+)`:night_rider` (236)
- ![#3a3a3a](https://placehold.it/15/3a3a3a/000000?text=+)`:eclipse` (237)
- ![#444444](https://placehold.it/15/444444/000000?text=+)`:charcoal` `:tundora` (238)
- ![#4e4e4e](https://placehold.it/15/4e4e4e/000000?text=+)`:matterhorn` (239)
- ![#585858](https://placehold.it/15/585858/000000?text=+)`:mortar` `:scorpion` (240)
- ![#626262](https://placehold.it/15/626262/000000?text=+)`:dove_gray` (241)
- ![#6c6c6c](https://placehold.it/15/6c6c6c/000000?text=+)`:color242` (242)
- ![#767676](https://placehold.it/15/767676/000000?text=+)`:empress` (243)
- ![#808080](https://placehold.it/15/808080/000000?text=+)`:grey` `:gray` (244)
- ![#8a8a8a](https://placehold.it/15/8a8a8a/000000?text=+)`:suva_grey` (245)
- ![#949494](https://placehold.it/15/949494/000000?text=+)`:dusty_gray` (246)
- ![#9e9e9e](https://placehold.it/15/9e9e9e/000000?text=+)`:silver_chalice` (247)
- ![#a8a8a8](https://placehold.it/15/a8a8a8/000000?text=+)`:color248` (248)
- ![#b2b2b2](https://placehold.it/15/b2b2b2/000000?text=+)`:color249` (249)
- ![#bcbcbc](https://placehold.it/15/bcbcbc/000000?text=+)`:silver` (250)
- ![#c6c6c6](https://placehold.it/15/c6c6c6/000000?text=+)`:color251` (251)
- ![#d0d0d0](https://placehold.it/15/d0d0d0/000000?text=+)`:alto` (252)
- ![#dadada](https://placehold.it/15/dadada/000000?text=+)`:color253` (253)
- ![#e4e4e4](https://placehold.it/15/e4e4e4/000000?text=+)`:mercury` `:gainsboro` (254)
- ![#eeeeee](https://placehold.it/15/eeeeee/000000?text=+)`:white_smoke` `:gallery` (255)
