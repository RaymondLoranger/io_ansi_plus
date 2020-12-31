# IO ANSI Plus

[![Build Status](https://travis-ci.org/RaymondLoranger/io_ansi_plus.svg?branch=master)](https://travis-ci.org/RaymondLoranger/io_ansi_plus)

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
- <img src="images/00ffff.png"> `:aqua`
- <img src="images/87ff00.png"> `:chartreuse`
- <img src="images/d700ff.png"> `:psychedelic_purple`

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
## ![examples](images/io_ansi_plus_examples.png)

## Color Chart
## ![color_chart](images/color_chart.png)

## Color Samples
- <img src="images/000000.png"> `:black` (0)
- <img src="images/800000.png"> `:red` `:maroon` (1)
- <img src="images/008000.png"> `:green` (2)
- <img src="images/808000.png"> `:yellow` (3)
- <img src="images/000080.png"> `:blue` `:navy` (4)
- <img src="images/800080.png"> `:magenta` `:purple` `:fresh_eggplant` (5)
- <img src="images/008080.png"> `:cyan` `:teal` (6)
- <img src="images/c0c0c0.png"> `:white` (7)
- <img src="images/808080.png"> `:light_black` (8)
- <img src="images/ff0000.png"> `:light_red` (9)
- <img src="images/00ff00.png"> `:light_green` `:lime` (10)
- <img src="images/ffff00.png"> `:light_yellow` (11)
- <img src="images/0000ff.png"> `:light_blue` (12)
- <img src="images/ff00ff.png"> `:light_magenta` (13)
- <img src="images/00ffff.png"> `:light_cyan` (14)
- <img src="images/ffffff.png"> `:light_white` (15)
- <img src="images/000000.png"> `:color16` (16)
- <img src="images/00005f.png"> `:stratos` (17)
- <img src="images/000087.png"> `:dark_blue` (18)
- <img src="images/0000af.png"> `:new_midnight_blue` (19)
- <img src="images/0000d7.png"> `:medium_blue` (20)
- <img src="images/0000ff.png"> `:color21` (21)
- <img src="images/005f00.png"> `:dark_green` `:camarone` (22)
- <img src="images/005f5f.png"> `:blue_stone` `:dark_slate_gray` `:mosque` (23)
- <img src="images/005f87.png"> `:blue_lagoon` `:orient` (24)
- <img src="images/005faf.png"> `:cobalt` `:endeavour` (25)
- <img src="images/005fd7.png"> `:navy_blue` `:science_blue` (26)
- <img src="images/005fff.png"> `:blue_ribbon` (27)
- <img src="images/008700.png"> `:japanese_laurel` (28)
- <img src="images/00875f.png"> `:deep_sea` `:observatory` (29)
- <img src="images/008787.png"> `:dark_cyan` (30)
- <img src="images/0087af.png"> `:cerulean` (31)
- <img src="images/0087d7.png"> `:pacific_blue` (32)
- <img src="images/0087ff.png"> `:dodger_blue` (33)
- <img src="images/00af00.png"> `:islamic_green` (34)
- <img src="images/00af5f.png"> `:jade` (35)
- <img src="images/00af87.png"> `:persian_green` (36)
- <img src="images/00afaf.png"> `:bondi_blue` `:light_sea_green` (37)
- <img src="images/00afd7.png"> `:iris_blue` (38)
- <img src="images/00afff.png"> `:deep_sky_blue` (39)
- <img src="images/00d700.png"> `:color40` (40)
- <img src="images/00d75f.png"> `:malachite` (41)
- <img src="images/00d787.png"> `:caribbean_green` (42)
- <img src="images/00d7af.png"> `:color43` (43)
- <img src="images/00d7d7.png"> `:dark_turquoise` (44)
- <img src="images/00d7ff.png"> `:color45` (45)
- <img src="images/00ff00.png"> `:color46` (46)
- <img src="images/00ff5f.png"> `:color47` (47)
- <img src="images/00ff87.png"> `:spring_green` (48)
- <img src="images/00ffaf.png"> `:medium_spring_green` (49)
- <img src="images/00ffd7.png"> `:bright_turquoise` (50)
- <img src="images/00ffff.png"> `:aqua` (51)
- <img src="images/5f0000.png"> `:rosewood` (52)
- <img src="images/5f005f.png"> `:tyrian_purple` (53)
- <img src="images/5f0087.png"> `:indigo` (54)
- <img src="images/5f00af.png"> `:color55` (55)
- <img src="images/5f00d7.png"> `:electric_indigo` (56)
- <img src="images/5f00ff.png"> `:blue_violet` (57)
- <img src="images/5f5f00.png"> `:verdun_green` (58)
- <img src="images/5f5f5f.png"> `:dim_gray` (59)
- <img src="images/5f5f87.png"> `:kimberly` (60)
- <img src="images/5f5faf.png"> `:rich_blue` (61)
- <img src="images/5f5fd7.png"> `:slate_blue` (62)
- <img src="images/5f5fff.png"> `:neon_blue` `:royal_blue` (63)
- <img src="images/5f8700.png"> `:limeade` (64)
- <img src="images/5f875f.png"> `:hippie_green` (65)
- <img src="images/5f8787.png"> `:hoki` (66)
- <img src="images/5f87af.png"> `:steel_blue` `:air_force_blue` (67)
- <img src="images/5f87d7.png"> `:picton_blue` (68)
- <img src="images/5f87ff.png"> `:cornflower_blue` `:light_slate_blue` (69)
- <img src="images/5faf00.png"> `:color70` (70)
- <img src="images/5faf5f.png"> `:fern` (71)
- <img src="images/5faf87.png"> `:cadet_blue` `:keppel` (72)
- <img src="images/5fafaf.png"> `:fountain_blue` (73)
- <img src="images/5fafd7.png"> `:shakespeare` (74)
- <img src="images/5fafff.png"> `:maya_blue` (75)
- <img src="images/5fd700.png"> `:bright_green` (76)
- <img src="images/5fd75f.png"> `:color77` (77)
- <img src="images/5fd787.png"> `:pastel_green` (78)
- <img src="images/5fd7af.png"> `:color79` (79)
- <img src="images/5fd7d7.png"> `:medium_turquoise` (80)
- <img src="images/5fd7ff.png"> `:malibu` (81)
- <img src="images/5fff00.png"> `:color82` (82)
- <img src="images/5fff5f.png"> `:screamin_green` (83)
- <img src="images/5fff87.png"> `:color84` (84)
- <img src="images/5fffaf.png"> `:color85` (85)
- <img src="images/5fffd7.png"> `:color86` (86)
- <img src="images/5fffff.png"> `:baby_blue` (87)
- <img src="images/870000.png"> `:dark_red` (88)
- <img src="images/87005f.png"> `:eggplant` (89)
- <img src="images/870087.png"> `:dark_magenta` (90)
- <img src="images/8700af.png"> `:color91` (91)
- <img src="images/8700d7.png"> `:dark_violet` (92)
- <img src="images/8700ff.png"> `:electric_violet` (93)
- <img src="images/875f00.png"> `:brown` (94)
- <img src="images/875f5f.png"> `:light_wood` (95)
- <img src="images/875f87.png"> `:trendy_pink` (96)
- <img src="images/875faf.png"> `:blue_marguerite` (97)
- <img src="images/875fd7.png"> `:color98` (98)
- <img src="images/875fff.png"> `:color99` (99)
- <img src="images/878700.png"> `:olive` (100)
- <img src="images/87875f.png"> `:bandicoot` (101)
- <img src="images/878787.png"> `:color102` (102)
- <img src="images/8787af.png"> `:ship_cove` `:light_slate_grey` (103)
- <img src="images/8787d7.png"> `:medium_purple` `:portage` (104)
- <img src="images/8787ff.png"> `:color105` (105)
- <img src="images/87af00.png"> `:citrus` (106)
- <img src="images/87af5f.png"> `:chelsea_cucumber` (107)
- <img src="images/87af87.png"> `:dark_sea_green` (108)
- <img src="images/87afaf.png"> `:ziggurat` (109)
- <img src="images/87afd7.png"> `:seagull` (110)
- <img src="images/87afff.png"> `:color111` (111)
- <img src="images/87d700.png"> `:lawn_green` (112)
- <img src="images/87d75f.png"> `:color113` (113)
- <img src="images/87d787.png"> `:gossip` (114)
- <img src="images/87d7af.png"> `:bermuda` (115)
- <img src="images/87d7d7.png"> `:riptide` (116)
- <img src="images/87d7ff.png"> `:columbia_blue` (117)
- <img src="images/87ff00.png"> `:chartreuse` (118)
- <img src="images/87ff5f.png"> `:color119` (119)
- <img src="images/87ff87.png"> `:mint_green` (120)
- <img src="images/87ffaf.png"> `:pale_green` (121)
- <img src="images/87ffd7.png"> `:color122` (122)
- <img src="images/87ffff.png"> `:electric_blue` (123)
- <img src="images/af0000.png"> `:free_speech_red` (124)
- <img src="images/af005f.png"> `:flirt` (125)
- <img src="images/af0087.png"> `:medium_violet_red` (126)
- <img src="images/af00af.png"> `:deep_magenta` (127)
- <img src="images/af00d7.png"> `:color128` (128)
- <img src="images/af00ff.png"> `:electric_purple` (129)
- <img src="images/af5f00.png"> `:tenne` `:rose_of_sharon` (130)
- <img src="images/af5f5f.png"> `:coral_tree` (131)
- <img src="images/af5f87.png"> `:tapestry` (132)
- <img src="images/af5faf.png"> `:violet_blue` (133)
- <img src="images/af5fd7.png"> `:medium_orchid` (134)
- <img src="images/af5fff.png"> `:color135` (135)
- <img src="images/af8700.png"> `:dark_goldenrod` (136)
- <img src="images/af875f.png"> `:teak` (137)
- <img src="images/af8787.png"> `:rosy_brown` `:thatch` (138)
- <img src="images/af87af.png"> `:london_hue` (139)
- <img src="images/af87d7.png"> `:wisteria` (140)
- <img src="images/af87ff.png"> `:color141` (141)
- <img src="images/afaf00.png"> `:buddha_gold` (142)
- <img src="images/afaf5f.png"> `:olive_green` `:dark_khaki` (143)
- <img src="images/afaf87.png"> `:neutral_green` (144)
- <img src="images/afafaf.png"> `:dark_gray` (145)
- <img src="images/afafd7.png"> `:moon_raker` (146)
- <img src="images/afafff.png"> `:light_steel_blue` (147)
- <img src="images/afd700.png"> `:spring_bud` (148)
- <img src="images/afd75f.png"> `:conifer` (149)
- <img src="images/afd787.png"> `:feijoa` (150)
- <img src="images/afd7af.png"> `:chinook` (151)
- <img src="images/afd7d7.png"> `:scandal` (152)
- <img src="images/afd7ff.png"> `:anakiwa` (153)
- <img src="images/afff00.png"> `:green_yellow` (154)
- <img src="images/afff5f.png"> `:color155` (155)
- <img src="images/afff87.png"> `:color156` (156)
- <img src="images/afffaf.png"> `:color157` (157)
- <img src="images/afffd7.png"> `:aero_blue` (158)
- <img src="images/afffff.png"> `:french_pass` (159)
- <img src="images/d70000.png"> `:guardsman_red` (160)
- <img src="images/d7005f.png"> `:razzmatazz` (161)
- <img src="images/d70087.png"> `:hollywood_cerise` (162)
- <img src="images/d700af.png"> `:color163` (163)
- <img src="images/d700d7.png"> `:purple_pizzazz` (164)
- <img src="images/d700ff.png"> `:psychedelic_purple` (165)
- <img src="images/d75f00.png"> `:tenn` (166)
- <img src="images/d75f5f.png"> `:indian_red` `:roman` (167)
- <img src="images/d75f87.png"> `:pale_violet_red` (168)
- <img src="images/d75faf.png"> `:hopbush` (169)
- <img src="images/d75fd7.png"> `:orchid` (170)
- <img src="images/d75fff.png"> `:heliotrope` (171)
- <img src="images/d78700.png"> `:mango_tango` `:chocolate` (172)
- <img src="images/d7875f.png"> `:copper` (173)
- <img src="images/d78787.png"> `:my_pink` (174)
- <img src="images/d787af.png"> `:kobi` (175)
- <img src="images/d787d7.png"> `:plum` (176)
- <img src="images/d787ff.png"> `:violet` (177)
- <img src="images/d7af00.png"> `:goldenrod` `:golden_poppy` `:corn` (178)
- <img src="images/d7af5f.png"> `:equator` (179)
- <img src="images/d7af87.png"> `:tan` `:calico` (180)
- <img src="images/d7afaf.png"> `:pink_flare` (181)
- <img src="images/d7afd7.png"> `:french_lilac` (182)
- <img src="images/d7afff.png"> `:mauve` (183)
- <img src="images/d7d700.png"> `:school_bus_yellow` (184)
- <img src="images/d7d75f.png"> `:tacha` (185)
- <img src="images/d7d787.png"> `:deco` (186)
- <img src="images/d7d7af.png"> `:aths_special` (187)
- <img src="images/d7d7d7.png"> `:light_grey` `:light_gray` (188)
- <img src="images/d7d7ff.png"> `:lavender_blue` (189)
- <img src="images/d7ff00.png"> `:chartreuse_yellow` (190)
- <img src="images/d7ff5f.png"> `:laser_lemon` (191)
- <img src="images/d7ff87.png"> `:canary` (192)
- <img src="images/d7ffaf.png"> `:reef` (193)
- <img src="images/d7ffd7.png"> `:honeydew` `:beige` (194)
- <img src="images/d7ffff.png"> `:oyster_bay` (195)
- <img src="images/ff0000.png"> `:color196` (196)
- <img src="images/ff005f.png"> `:rose` (197)
- <img src="images/ff0087.png"> `:deep_pink` (198)
- <img src="images/ff00af.png"> `:color199` (199)
- <img src="images/ff00d7.png"> `:hot_magenta` (200)
- <img src="images/ff00ff.png"> `:fuchsia` (201)
- <img src="images/ff5f00.png"> `:orange_red` `:safety_orange` (202)
- <img src="images/ff5f5f.png"> `:bittersweet` (203)
- <img src="images/ff5f87.png"> `:wild_watermelon` (204)
- <img src="images/ff5faf.png"> `:hot_pink` (205)
- <img src="images/ff5fd7.png"> `:neon_pink` (206)
- <img src="images/ff5fff.png"> `:pink_flamingo` (207)
- <img src="images/ff8700.png"> `:dark_orange` (208)
- <img src="images/ff875f.png"> `:coral` (209)
- <img src="images/ff8787.png"> `:light_coral` `:mona_lisa` (210)
- <img src="images/ff87af.png"> `:tickle_me_pink` (211)
- <img src="images/ff87d7.png"> `:color212` (212)
- <img src="images/ff87ff.png"> `:fuchsia_pink` (213)
- <img src="images/ffaf00.png"> `:orange` (214)
- <img src="images/ffaf5f.png"> `:sandy_brown` `:rajah` (215)
- <img src="images/ffaf87.png"> `:hit_pink` `:macaroni_and_cheese` (216)
- <img src="images/ffafaf.png"> `:melon` (217)
- <img src="images/ffafd7.png"> `:cotton_candy` (218)
- <img src="images/ffafff.png"> `:lavender_rose` (219)
- <img src="images/ffd700.png"> `:gold` (220)
- <img src="images/ffd75f.png"> `:dandelion` (221)
- <img src="images/ffd787.png"> `:khaki` `:salomie` (222)
- <img src="images/ffd7af.png"> `:moccasin` `:navajo_white` (223)
- <img src="images/ffd7d7.png"> `:mysty_rose` (224)
- <img src="images/ffd7ff.png"> `:lavender_blush` (225)
- <img src="images/ffff00.png"> `:color226` (226)
- <img src="images/ffff5f.png"> `:color227` (227)
- <img src="images/ffff87.png"> `:dolly` (228)
- <img src="images/ffffaf.png"> `:portafino` (229)
- <img src="images/ffffd7.png"> `:cream` `:cumulus` (230)
- <img src="images/ffffff.png"> `:color231` (231)
- <img src="images/080808.png"> `:cod_gray` (232)
- <img src="images/121212.png"> `:color233` (233)
- <img src="images/1c1c1c.png"> `:nero` (234)
- <img src="images/262626.png"> `:mine_shaft` (235)
- <img src="images/303030.png"> `:night_rider` (236)
- <img src="images/3a3a3a.png"> `:eclipse` (237)
- <img src="images/444444.png"> `:charcoal` `:tundora` (238)
- <img src="images/4e4e4e.png"> `:matterhorn` (239)
- <img src="images/585858.png"> `:mortar` `:scorpion` (240)
- <img src="images/626262.png"> `:dove_gray` (241)
- <img src="images/6c6c6c.png"> `:color242` (242)
- <img src="images/767676.png"> `:empress` (243)
- <img src="images/808080.png"> `:grey` `:gray` (244)
- <img src="images/8a8a8a.png"> `:suva_grey` (245)
- <img src="images/949494.png"> `:dusty_gray` (246)
- <img src="images/9e9e9e.png"> `:silver_chalice` (247)
- <img src="images/a8a8a8.png"> `:color248` (248)
- <img src="images/b2b2b2.png"> `:color249` (249)
- <img src="images/bcbcbc.png"> `:silver` (250)
- <img src="images/c6c6c6.png"> `:color251` (251)
- <img src="images/d0d0d0.png"> `:alto` (252)
- <img src="images/dadada.png"> `:color253` (253)
- <img src="images/e4e4e4.png"> `:mercury` `:gainsboro` (254)
- <img src="images/eeeeee.png"> `:white_smoke` `:gallery` (255)

[IO.ANSI]: https://hexdocs.pm/elixir/IO.ANSI.html