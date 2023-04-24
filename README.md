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
