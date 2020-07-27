import Config

colors = [
  %{
    code: 0,
    hex: "#000000",
    rgb: "rgb(0,0,0)",
    names: []
  },
  %{
    code: 1,
    hex: "#800000",
    rgb: "rgb(128,0,0)",
    names: [:maroon]
  },
  %{
    code: 2,
    hex: "#008000",
    rgb: "rgb(0,128,0)",
    names: []
  },
  %{
    code: 3,
    hex: "#808000",
    rgb: "rgb(128,128,0)",
    names: []
  },
  %{
    code: 4,
    hex: "#000080",
    rgb: "rgb(0,0,128)",
    names: [:navy]
  },
  %{
    code: 5,
    hex: "#800080",
    rgb: "rgb(128,0,128)",
    names: [:purple, :fresh_eggplant]
  },
  %{
    code: 6,
    hex: "#008080",
    rgb: "rgb(0,128,128)",
    names: [:teal]
  },
  %{
    code: 7,
    hex: "#c0c0c0",
    rgb: "rgb(192,192,192)",
    names: []
  },
  %{
    code: 8,
    hex: "#808080",
    rgb: "rgb(128,128,128)",
    names: []
  },
  %{
    code: 9,
    hex: "#ff0000",
    rgb: "rgb(255,0,0)",
    names: []
  },
  %{
    code: 10,
    hex: "#00ff00",
    rgb: "rgb(0,255,0)",
    names: [:lime]
  },
  %{
    code: 11,
    hex: "#ffff00",
    rgb: "rgb(255,255,0)",
    names: []
  },
  %{
    code: 12,
    hex: "#0000ff",
    rgb: "rgb(0,0,255)",
    names: []
  },
  %{
    code: 13,
    hex: "#ff00ff",
    rgb: "rgb(255,0,255)",
    names: []
  },
  %{
    code: 14,
    hex: "#00ffff",
    rgb: "rgb(0,255,255)",
    names: []
  },
  %{
    code: 15,
    hex: "#ffffff",
    rgb: "rgb(255,255,255)",
    names: []
  },
  %{
    code: 16,
    hex: "#000000",
    rgb: "rgb(0,0,0)",
    names: []
  },
  %{
    code: 17,
    hex: "#00005f",
    rgb: "rgb(0,0,95)",
    names: [:stratos]
  },
  %{
    code: 18,
    hex: "#000087",
    rgb: "rgb(0,0,135)",
    names: [:dark_blue]
  },
  %{
    code: 19,
    hex: "#0000af",
    rgb: "rgb(0,0,175)",
    names: [:new_midnight_blue]
  },
  %{
    code: 20,
    hex: "#0000d7",
    rgb: "rgb(0,0,215)",
    names: [:medium_blue]
  },
  %{
    code: 21,
    hex: "#0000ff",
    rgb: "rgb(0,0,255)",
    names: []
  },
  %{
    code: 22,
    hex: "#005f00",
    rgb: "rgb(0,95,0)",
    names: [:dark_green, :camarone]
  },
  %{
    code: 23,
    hex: "#005f5f",
    rgb: "rgb(0,95,95)",
    names: [:blue_stone, :dark_slate_gray, :mosque]
  },
  %{
    code: 24,
    hex: "#005f87",
    rgb: "rgb(0,95,135)",
    names: [:blue_lagoon, :orient]
  },
  %{
    code: 25,
    hex: "#005faf",
    rgb: "rgb(0,95,175)",
    names: [:cobalt, :endeavour]
  },
  %{
    code: 26,
    hex: "#005fd7",
    rgb: "rgb(0,95,215)",
    names: [:navy_blue, :science_blue]
  },
  %{
    code: 27,
    hex: "#005fff",
    rgb: "rgb(0,95,255)",
    names: [:blue_ribbon]
  },
  %{
    code: 28,
    hex: "#008700",
    rgb: "rgb(0,135,0)",
    names: [:japanese_laurel]
  },
  %{
    code: 29,
    hex: "#00875f",
    rgb: "rgb(0,135,95)",
    names: [:deep_sea, :observatory]
  },
  %{
    code: 30,
    hex: "#008787",
    rgb: "rgb(0,135,135)",
    names: [:dark_cyan]
  },
  %{
    code: 31,
    hex: "#0087af",
    rgb: "rgb(0,135,175)",
    names: [:cerulean]
  },
  %{
    code: 32,
    hex: "#0087d7",
    rgb: "rgb(0,135,215)",
    names: [:pacific_blue]
  },
  %{
    code: 33,
    hex: "#0087ff",
    rgb: "rgb(0,135,255)",
    names: [:dodger_blue]
  },
  %{
    code: 34,
    hex: "#00af00",
    rgb: "rgb(0,175,0)",
    names: [:islamic_green]
  },
  %{
    code: 35,
    hex: "#00af5f",
    rgb: "rgb(0,175,95)",
    names: [:jade]
  },
  %{
    code: 36,
    hex: "#00af87",
    rgb: "rgb(0,175,135)",
    names: [:persian_green]
  },
  %{
    code: 37,
    hex: "#00afaf",
    rgb: "rgb(0,175,175)",
    names: [:bondi_blue, :light_sea_green]
  },
  %{
    code: 38,
    hex: "#00afd7",
    rgb: "rgb(0,175,215)",
    names: [:iris_blue]
  },
  %{
    code: 39,
    hex: "#00afff",
    rgb: "rgb(0,175,255)",
    names: [:deep_sky_blue]
  },
  %{
    code: 40,
    hex: "#00d700",
    rgb: "rgb(0,215,0)",
    names: []
  },
  %{
    code: 41,
    hex: "#00d75f",
    rgb: "rgb(0,215,95)",
    names: [:malachite]
  },
  %{
    code: 42,
    hex: "#00d787",
    rgb: "rgb(0,215,135)",
    names: [:caribbean_green]
  },
  %{
    code: 43,
    hex: "#00d7af",
    rgb: "rgb(0,215,175)",
    names: []
  },
  %{
    code: 44,
    hex: "#00d7d7",
    rgb: "rgb(0,215,215)",
    names: [:dark_turquoise]
  },
  %{
    code: 45,
    hex: "#00d7ff",
    rgb: "rgb(0,215,255)",
    names: []
  },
  %{
    code: 46,
    hex: "#00ff00",
    rgb: "rgb(0,255,0)",
    names: []
  },
  %{
    code: 47,
    hex: "#00ff5f",
    rgb: "rgb(0,255,95)",
    names: []
  },
  %{
    code: 48,
    hex: "#00ff87",
    rgb: "rgb(0,255,135)",
    names: [:spring_green]
  },
  %{
    code: 49,
    hex: "#00ffaf",
    rgb: "rgb(0,255,175)",
    names: [:medium_spring_green]
  },
  %{
    code: 50,
    hex: "#00ffd7",
    rgb: "rgb(0,255,215)",
    names: [:bright_turquoise]
  },
  %{
    code: 51,
    hex: "#00ffff",
    rgb: "rgb(0,255,255)",
    names: [:aqua]
  },
  %{
    code: 52,
    hex: "#5f0000",
    rgb: "rgb(95,0,0)",
    names: [:rosewood]
  },
  %{
    code: 53,
    hex: "#5f005f",
    rgb: "rgb(95,0,95)",
    names: [:tyrian_purple]
  },
  %{
    code: 54,
    hex: "#5f0087",
    rgb: "rgb(95,0,135)",
    names: [:indigo]
  },
  %{
    code: 55,
    hex: "#5f00af",
    rgb: "rgb(95,0,175)",
    names: []
  },
  %{
    code: 56,
    hex: "#5f00d7",
    rgb: "rgb(95,0,215)",
    names: [:electric_indigo]
  },
  %{
    code: 57,
    hex: "#5f00ff",
    rgb: "rgb(95,0,255)",
    names: [:blue_violet]
  },
  %{
    code: 58,
    hex: "#5f5f00",
    rgb: "rgb(95,95,0)",
    names: [:verdun_green]
  },
  %{
    code: 59,
    hex: "#5f5f5f",
    rgb: "rgb(95,95,95)",
    names: [:dim_gray]
  },
  %{
    code: 60,
    hex: "#5f5f87",
    rgb: "rgb(95,95,135)",
    names: [:kimberly]
  },
  %{
    code: 61,
    hex: "#5f5faf",
    rgb: "rgb(95,95,175)",
    names: [:rich_blue]
  },
  %{
    code: 62,
    hex: "#5f5fd7",
    rgb: "rgb(95,95,215)",
    names: [:slate_blue]
  },
  %{
    code: 63,
    hex: "#5f5fff",
    rgb: "rgb(95,95,255)",
    names: [:neon_blue, :royal_blue]
  },
  %{
    code: 64,
    hex: "#5f8700",
    rgb: "rgb(95,135,0)",
    names: [:limeade]
  },
  %{
    code: 65,
    hex: "#5f875f",
    rgb: "rgb(95,135,95)",
    names: [:hippie_green]
  },
  %{
    code: 66,
    hex: "#5f8787",
    rgb: "rgb(95,135,135)",
    names: [:hoki]
  },
  %{
    code: 67,
    hex: "#5f87af",
    rgb: "rgb(95,135,175)",
    names: [:steel_blue, :air_force_blue]
  },
  %{
    code: 68,
    hex: "#5f87d7",
    rgb: "rgb(95,135,215)",
    names: [:picton_blue]
  },
  %{
    code: 69,
    hex: "#5f87ff",
    rgb: "rgb(95,135,255)",
    names: [:cornflower_blue, :light_slate_blue]
  },
  %{
    code: 70,
    hex: "#5faf00",
    rgb: "rgb(95,175,0)",
    names: []
  },
  %{
    code: 71,
    hex: "#5faf5f",
    rgb: "rgb(95,175,95)",
    names: [:fern]
  },
  %{
    code: 72,
    hex: "#5faf87",
    rgb: "rgb(95,175,135)",
    names: [:cadet_blue, :keppel]
  },
  %{
    code: 73,
    hex: "#5fafaf",
    rgb: "rgb(95,175,175)",
    names: [:fountain_blue]
  },
  %{
    code: 74,
    hex: "#5fafd7",
    rgb: "rgb(95,175,215)",
    names: [:shakespeare]
  },
  %{
    code: 75,
    hex: "#5fafff",
    rgb: "rgb(95,175,255)",
    names: [:maya_blue]
  },
  %{
    code: 76,
    hex: "#5fd700",
    rgb: "rgb(95,215,0)",
    names: [:bright_green]
  },
  %{
    code: 77,
    hex: "#5fd75f",
    rgb: "rgb(95,215,95)",
    names: []
  },
  %{
    code: 78,
    hex: "#5fd787",
    rgb: "rgb(95,215,135)",
    names: [:pastel_green]
  },
  %{
    code: 79,
    hex: "#5fd7af",
    rgb: "rgb(95,215,175)",
    names: []
  },
  %{
    code: 80,
    hex: "#5fd7d7",
    rgb: "rgb(95,215,215)",
    names: [:medium_turquoise]
  },
  %{
    code: 81,
    hex: "#5fd7ff",
    rgb: "rgb(95,215,255)",
    names: [:malibu]
  },
  %{
    code: 82,
    hex: "#5fff00",
    rgb: "rgb(95,255,0)",
    names: []
  },
  %{
    code: 83,
    hex: "#5fff5f",
    rgb: "rgb(95,255,95)",
    names: [:screamin_green]
  },
  %{
    code: 84,
    hex: "#5fff87",
    rgb: "rgb(95,255,135)",
    names: []
  },
  %{
    code: 85,
    hex: "#5fffaf",
    rgb: "rgb(95,255,175)",
    names: []
  },
  %{
    code: 86,
    hex: "#5fffd7",
    rgb: "rgb(95,255,215)",
    names: []
  },
  %{
    code: 87,
    hex: "#5fffff",
    rgb: "rgb(95,255,255)",
    names: [:baby_blue]
  },
  %{
    code: 88,
    hex: "#870000",
    rgb: "rgb(135,0,0)",
    names: [:dark_red]
  },
  %{
    code: 89,
    hex: "#87005f",
    rgb: "rgb(135,0,95)",
    names: [:eggplant]
  },
  %{
    code: 90,
    hex: "#870087",
    rgb: "rgb(135,0,135)",
    names: [:dark_magenta]
  },
  %{
    code: 91,
    hex: "#8700af",
    rgb: "rgb(135,0,175)",
    names: []
  },
  %{
    code: 92,
    hex: "#8700d7",
    rgb: "rgb(135,0,215)",
    names: [:dark_violet]
  },
  %{
    code: 93,
    hex: "#8700ff",
    rgb: "rgb(135,0,255)",
    names: [:electric_violet]
  },
  %{
    code: 94,
    hex: "#875f00",
    rgb: "rgb(135,95,0)",
    names: [:brown]
  },
  %{
    code: 95,
    hex: "#875f5f",
    rgb: "rgb(135,95,95)",
    names: [:light_wood]
  },
  %{
    code: 96,
    hex: "#875f87",
    rgb: "rgb(135,95,135)",
    names: [:trendy_pink]
  },
  %{
    code: 97,
    hex: "#875faf",
    rgb: "rgb(135,95,175)",
    names: [:blue_marguerite]
  },
  %{
    code: 98,
    hex: "#875fd7",
    rgb: "rgb(135,95,215)",
    names: []
  },
  %{
    code: 99,
    hex: "#875fff",
    rgb: "rgb(135,95,255)",
    names: []
  },
  %{
    code: 100,
    hex: "#878700",
    rgb: "rgb(135,135,0)",
    names: [:olive]
  },
  %{
    code: 101,
    hex: "#87875f",
    rgb: "rgb(135,135,95)",
    names: [:bandicoot]
  },
  %{
    code: 102,
    hex: "#878787",
    rgb: "rgb(135,135,135)",
    names: []
  },
  %{
    code: 103,
    hex: "#8787af",
    rgb: "rgb(135,135,175)",
    names: [:ship_cove, :light_slate_grey]
  },
  %{
    code: 104,
    hex: "#8787d7",
    rgb: "rgb(135,135,215)",
    names: [:medium_purple, :portage]
  },
  %{
    code: 105,
    hex: "#8787ff",
    rgb: "rgb(135,135,255)",
    names: []
  },
  %{
    code: 106,
    hex: "#87af00",
    rgb: "rgb(135,175,0)",
    names: [:citrus]
  },
  %{
    code: 107,
    hex: "#87af5f",
    rgb: "rgb(135,175,95)",
    names: [:chelsea_cucumber]
  },
  %{
    code: 108,
    hex: "#87af87",
    rgb: "rgb(135,175,135)",
    names: [:dark_sea_green]
  },
  %{
    code: 109,
    hex: "#87afaf",
    rgb: "rgb(135,175,175)",
    names: [:ziggurat]
  },
  %{
    code: 110,
    hex: "#87afd7",
    rgb: "rgb(135,175,215)",
    names: [:seagull]
  },
  %{
    code: 111,
    hex: "#87afff",
    rgb: "rgb(135,175,255)",
    names: []
  },
  %{
    code: 112,
    hex: "#87d700",
    rgb: "rgb(135,215,0)",
    names: [:lawn_green]
  },
  %{
    code: 113,
    hex: "#87d75f",
    rgb: "rgb(135,215,95)",
    names: []
  },
  %{
    code: 114,
    hex: "#87d787",
    rgb: "rgb(135,215,135)",
    names: [:gossip]
  },
  %{
    code: 115,
    hex: "#87d7af",
    rgb: "rgb(135,215,175)",
    names: [:bermuda]
  },
  %{
    code: 116,
    hex: "#87d7d7",
    rgb: "rgb(135,215,215)",
    names: [:riptide]
  },
  %{
    code: 117,
    hex: "#87d7ff",
    rgb: "rgb(135,215,255)",
    names: [:columbia_blue]
  },
  %{
    code: 118,
    hex: "#87ff00",
    rgb: "rgb(135,255,0)",
    names: [:chartreuse]
  },
  %{
    code: 119,
    hex: "#87ff5f",
    rgb: "rgb(135,255,95)",
    names: []
  },
  %{
    code: 120,
    hex: "#87ff87",
    rgb: "rgb(135,255,135)",
    names: [:mint_green]
  },
  %{
    code: 121,
    hex: "#87ffaf",
    rgb: "rgb(135,255,175)",
    names: [:pale_green]
  },
  %{
    code: 122,
    hex: "#87ffd7",
    rgb: "rgb(135,255,215)",
    names: []
  },
  %{
    code: 123,
    hex: "#87ffff",
    rgb: "rgb(135,255,255)",
    names: [:electric_blue]
  },
  %{
    code: 124,
    hex: "#af0000",
    rgb: "rgb(175,0,0)",
    names: [:free_speech_red]
  },
  %{
    code: 125,
    hex: "#af005f",
    rgb: "rgb(175,0,95)",
    names: [:flirt]
  },
  %{
    code: 126,
    hex: "#af0087",
    rgb: "rgb(175,0,135)",
    names: [:medium_violet_red]
  },
  %{
    code: 127,
    hex: "#af00af",
    rgb: "rgb(175,0,175)",
    names: [:deep_magenta]
  },
  %{
    code: 128,
    hex: "#af00d7",
    rgb: "rgb(175,0,215)",
    names: []
  },
  %{
    code: 129,
    hex: "#af00ff",
    rgb: "rgb(175,0,255)",
    names: [:electric_purple]
  },
  %{
    code: 130,
    hex: "#af5f00",
    rgb: "rgb(175,95,0)",
    names: [:tenne, :rose_of_sharon]
  },
  %{
    code: 131,
    hex: "#af5f5f",
    rgb: "rgb(175,95,95)",
    names: [:coral_tree]
  },
  %{
    code: 132,
    hex: "#af5f87",
    rgb: "rgb(175,95,135)",
    names: [:tapestry]
  },
  %{
    code: 133,
    hex: "#af5faf",
    rgb: "rgb(175,95,175)",
    names: [:violet_blue]
  },
  %{
    code: 134,
    hex: "#af5fd7",
    rgb: "rgb(175,95,215)",
    names: [:medium_orchid]
  },
  %{
    code: 135,
    hex: "#af5fff",
    rgb: "rgb(175,95,255)",
    names: []
  },
  %{
    code: 136,
    hex: "#af8700",
    rgb: "rgb(175,135,0)",
    names: [:dark_goldenrod]
  },
  %{
    code: 137,
    hex: "#af875f",
    rgb: "rgb(175,135,95)",
    names: [:teak]
  },
  %{
    code: 138,
    hex: "#af8787",
    rgb: "rgb(175,135,135)",
    names: [:rosy_brown, :thatch]
  },
  %{
    code: 139,
    hex: "#af87af",
    rgb: "rgb(175,135,175)",
    names: [:london_hue]
  },
  %{
    code: 140,
    hex: "#af87d7",
    rgb: "rgb(175,135,215)",
    names: [:wisteria]
  },
  %{
    code: 141,
    hex: "#af87ff",
    rgb: "rgb(175,135,255)",
    names: []
  },
  %{
    code: 142,
    hex: "#afaf00",
    rgb: "rgb(175,175,0)",
    names: [:buddha_gold]
  },
  %{
    code: 143,
    hex: "#afaf5f",
    rgb: "rgb(175,175,95)",
    names: [:olive_green, :dark_khaki]
  },
  %{
    code: 144,
    hex: "#afaf87",
    rgb: "rgb(175,175,135)",
    names: [:neutral_green]
  },
  %{
    code: 145,
    hex: "#afafaf",
    rgb: "rgb(175,175,175)",
    names: [:dark_gray]
  },
  %{
    code: 146,
    hex: "#afafd7",
    rgb: "rgb(175,175,215)",
    names: [:moon_raker]
  },
  %{
    code: 147,
    hex: "#afafff",
    rgb: "rgb(175,175,255)",
    names: [:light_steel_blue]
  },
  %{
    code: 148,
    hex: "#afd700",
    rgb: "rgb(175,215,0)",
    names: [:spring_bud]
  },
  %{
    code: 149,
    hex: "#afd75f",
    rgb: "rgb(175,215,95)",
    names: [:conifer]
  },
  %{
    code: 150,
    hex: "#afd787",
    rgb: "rgb(175,215,135)",
    names: [:feijoa]
  },
  %{
    code: 151,
    hex: "#afd7af",
    rgb: "rgb(175,215,175)",
    names: [:chinook]
  },
  %{
    code: 152,
    hex: "#afd7d7",
    rgb: "rgb(175,215,215)",
    names: [:scandal]
  },
  %{
    code: 153,
    hex: "#afd7ff",
    rgb: "rgb(175,215,255)",
    names: [:anakiwa]
  },
  %{
    code: 154,
    hex: "#afff00",
    rgb: "rgb(175,255,0)",
    names: [:green_yellow]
  },
  %{
    code: 155,
    hex: "#afff5f",
    rgb: "rgb(175,255,95)",
    names: []
  },
  %{
    code: 156,
    hex: "#afff87",
    rgb: "rgb(175,255,135)",
    names: []
  },
  %{
    code: 157,
    hex: "#afffaf",
    rgb: "rgb(175,255,175)",
    names: []
  },
  %{
    code: 158,
    hex: "#afffd7",
    rgb: "rgb(175,255,215)",
    names: [:aero_blue]
  },
  %{
    code: 159,
    hex: "#afffff",
    rgb: "rgb(175,255,255)",
    names: [:french_pass]
  },
  %{
    code: 160,
    hex: "#d70000",
    rgb: "rgb(215,0,0)",
    names: [:guardsman_red]
  },
  %{
    code: 161,
    hex: "#d7005f",
    rgb: "rgb(215,0,95)",
    names: [:razzmatazz]
  },
  %{
    code: 162,
    hex: "#d70087",
    rgb: "rgb(215,0,135)",
    names: [:hollywood_cerise]
  },
  %{
    code: 163,
    hex: "#d700af",
    rgb: "rgb(215,0,175)",
    names: []
  },
  %{
    code: 164,
    hex: "#d700d7",
    rgb: "rgb(215,0,215)",
    names: [:purple_pizzazz]
  },
  %{
    code: 165,
    hex: "#d700ff",
    rgb: "rgb(215,0,255)",
    names: [:psychedelic_purple]
  },
  %{
    code: 166,
    hex: "#d75f00",
    rgb: "rgb(215,95,0)",
    names: [:tenn]
  },
  %{
    code: 167,
    hex: "#d75f5f",
    rgb: "rgb(215,95,95)",
    names: [:indian_red, :roman]
  },
  %{
    code: 168,
    hex: "#d75f87",
    rgb: "rgb(215,95,135)",
    names: [:pale_violet_red]
  },
  %{
    code: 169,
    hex: "#d75faf",
    rgb: "rgb(215,95,175)",
    names: [:hopbush]
  },
  %{
    code: 170,
    hex: "#d75fd7",
    rgb: "rgb(215,95,215)",
    names: [:orchid]
  },
  %{
    code: 171,
    hex: "#d75fff",
    rgb: "rgb(215,95,255)",
    names: [:heliotrope]
  },
  %{
    code: 172,
    hex: "#d78700",
    rgb: "rgb(215,135,0)",
    names: [:mango_tango, :chocolate]
  },
  %{
    code: 173,
    hex: "#d7875f",
    rgb: "rgb(215,135,95)",
    names: [:copper]
  },
  %{
    code: 174,
    hex: "#d78787",
    rgb: "rgb(215,135,135)",
    names: [:my_pink]
  },
  %{
    code: 175,
    hex: "#d787af",
    rgb: "rgb(215,135,175)",
    names: [:kobi]
  },
  %{
    code: 176,
    hex: "#d787d7",
    rgb: "rgb(215,135,215)",
    names: [:plum]
  },
  %{
    code: 177,
    hex: "#d787ff",
    rgb: "rgb(215,135,255)",
    names: [:violet]
  },
  %{
    code: 178,
    hex: "#d7af00",
    rgb: "rgb(215,175,0)",
    names: [:goldenrod, :golden_poppy, :corn]
  },
  %{
    code: 179,
    hex: "#d7af5f",
    rgb: "rgb(215,175,95)",
    names: [:equator]
  },
  %{
    code: 180,
    hex: "#d7af87",
    rgb: "rgb(215,175,135)",
    names: [:tan, :calico]
  },
  %{
    code: 181,
    hex: "#d7afaf",
    rgb: "rgb(215,175,175)",
    names: [:pink_flare]
  },
  %{
    code: 182,
    hex: "#d7afd7",
    rgb: "rgb(215,175,215)",
    names: [:french_lilac]
  },
  %{
    code: 183,
    hex: "#d7afff",
    rgb: "rgb(215,175,255)",
    names: [:mauve]
  },
  %{
    code: 184,
    hex: "#d7d700",
    rgb: "rgb(215,215,0)",
    names: [:school_bus_yellow]
  },
  %{
    code: 185,
    hex: "#d7d75f",
    rgb: "rgb(215,215,95)",
    names: [:tacha]
  },
  %{
    code: 186,
    hex: "#d7d787",
    rgb: "rgb(215,215,135)",
    names: [:deco]
  },
  %{
    code: 187,
    hex: "#d7d7af",
    rgb: "rgb(215,215,175)",
    names: [:aths_special]
  },
  %{
    code: 188,
    hex: "#d7d7d7",
    rgb: "rgb(215,215,215)",
    names: [:light_grey, :light_gray]
  },
  %{
    code: 189,
    hex: "#d7d7ff",
    rgb: "rgb(215,215,255)",
    names: [:lavender_blue]
  },
  %{
    code: 190,
    hex: "#d7ff00",
    rgb: "rgb(215,255,0)",
    names: [:chartreuse_yellow]
  },
  %{
    code: 191,
    hex: "#d7ff5f",
    rgb: "rgb(215,255,95)",
    names: [:laser_lemon]
  },
  %{
    code: 192,
    hex: "#d7ff87",
    rgb: "rgb(215,255,135)",
    names: [:canary]
  },
  %{
    code: 193,
    hex: "#d7ffaf",
    rgb: "rgb(215,255,175)",
    names: [:reef]
  },
  %{
    code: 194,
    hex: "#d7ffd7",
    rgb: "rgb(215,255,215)",
    names: [:honeydew, :beige]
  },
  %{
    code: 195,
    hex: "#d7ffff",
    rgb: "rgb(215,255,255)",
    names: [:oyster_bay]
  },
  %{
    code: 196,
    hex: "#ff0000",
    rgb: "rgb(255,0,0)",
    names: []
  },
  %{
    code: 197,
    hex: "#ff005f",
    rgb: "rgb(255,0,95)",
    names: [:rose]
  },
  %{
    code: 198,
    hex: "#ff0087",
    rgb: "rgb(255,0,135)",
    names: [:deep_pink]
  },
  %{
    code: 199,
    hex: "#ff00af",
    rgb: "rgb(255,0,175)",
    names: []
  },
  %{
    code: 200,
    hex: "#ff00d7",
    rgb: "rgb(255,0,215)",
    names: [:hot_magenta]
  },
  %{
    code: 201,
    hex: "#ff00ff",
    rgb: "rgb(255,0,255)",
    names: [:fuchsia]
  },
  %{
    code: 202,
    hex: "#ff5f00",
    rgb: "rgb(255,95,0)",
    names: [:orange_red, :safety_orange]
  },
  %{
    code: 203,
    hex: "#ff5f5f",
    rgb: "rgb(255,95,95)",
    names: [:bittersweet]
  },
  %{
    code: 204,
    hex: "#ff5f87",
    rgb: "rgb(255,95,135)",
    names: [:wild_watermelon]
  },
  %{
    code: 205,
    hex: "#ff5faf",
    rgb: "rgb(255,95,175)",
    names: [:hot_pink]
  },
  %{
    code: 206,
    hex: "#ff5fd7",
    rgb: "rgb(255,95,215)",
    names: [:neon_pink]
  },
  %{
    code: 207,
    hex: "#ff5fff",
    rgb: "rgb(255,95,255)",
    names: [:pink_flamingo]
  },
  %{
    code: 208,
    hex: "#ff8700",
    rgb: "rgb(255,135,0)",
    names: [:dark_orange]
  },
  %{
    code: 209,
    hex: "#ff875f",
    rgb: "rgb(255,135,95)",
    names: [:coral]
  },
  %{
    code: 210,
    hex: "#ff8787",
    rgb: "rgb(255,135,135)",
    names: [:light_coral, :mona_lisa]
  },
  %{
    code: 211,
    hex: "#ff87af",
    rgb: "rgb(255,135,175)",
    names: [:tickle_me_pink]
  },
  %{
    code: 212,
    hex: "#ff87d7",
    rgb: "rgb(255,135,215)",
    names: []
  },
  %{
    code: 213,
    hex: "#ff87ff",
    rgb: "rgb(255,135,255)",
    names: [:fuchsia_pink]
  },
  %{
    code: 214,
    hex: "#ffaf00",
    rgb: "rgb(255,175,0)",
    names: [:orange]
  },
  %{
    code: 215,
    hex: "#ffaf5f",
    rgb: "rgb(255,175,95)",
    names: [:sandy_brown, :rajah]
  },
  %{
    code: 216,
    hex: "#ffaf87",
    rgb: "rgb(255,175,135)",
    names: [:hit_pink, :macaroni_and_cheese]
  },
  %{
    code: 217,
    hex: "#ffafaf",
    rgb: "rgb(255,175,175)",
    names: [:melon]
  },
  %{
    code: 218,
    hex: "#ffafd7",
    rgb: "rgb(255,175,215)",
    names: [:cotton_candy]
  },
  %{
    code: 219,
    hex: "#ffafff",
    rgb: "rgb(255,175,255)",
    names: [:lavender_rose]
  },
  %{
    code: 220,
    hex: "#ffd700",
    rgb: "rgb(255,215,0)",
    names: [:gold]
  },
  %{
    code: 221,
    hex: "#ffd75f",
    rgb: "rgb(255,215,95)",
    names: [:dandelion]
  },
  %{
    code: 222,
    hex: "#ffd787",
    rgb: "rgb(255,215,135)",
    names: [:khaki, :salomie]
  },
  %{
    code: 223,
    hex: "#ffd7af",
    rgb: "rgb(255,215,175)",
    names: [:moccasin, :navajo_white]
  },
  %{
    code: 224,
    hex: "#ffd7d7",
    rgb: "rgb(255,215,215)",
    names: [:mysty_rose]
  },
  %{
    code: 225,
    hex: "#ffd7ff",
    rgb: "rgb(255,215,255)",
    names: [:lavender_blush]
  },
  %{
    code: 226,
    hex: "#ffff00",
    rgb: "rgb(255,255,0)",
    names: []
  },
  %{
    code: 227,
    hex: "#ffff5f",
    rgb: "rgb(255,255,95)",
    names: []
  },
  %{
    code: 228,
    hex: "#ffff87",
    rgb: "rgb(255,255,135)",
    names: [:dolly]
  },
  %{
    code: 229,
    hex: "#ffffaf",
    rgb: "rgb(255,255,175)",
    names: [:portafino]
  },
  %{
    code: 230,
    hex: "#ffffd7",
    rgb: "rgb(255,255,215)",
    names: [:cream, :cumulus]
  },
  %{
    code: 231,
    hex: "#ffffff",
    rgb: "rgb(255,255,255)",
    names: []
  },
  %{
    code: 232,
    hex: "#080808",
    rgb: "rgb(8,8,8)",
    names: [:cod_gray]
  },
  %{
    code: 233,
    hex: "#121212",
    rgb: "rgb(18,18,18)",
    names: []
  },
  %{
    code: 234,
    hex: "#1c1c1c",
    rgb: "rgb(28,28,28)",
    names: [:nero]
  },
  %{
    code: 235,
    hex: "#262626",
    rgb: "rgb(38,38,38)",
    names: [:mine_shaft]
  },
  %{
    code: 236,
    hex: "#303030",
    rgb: "rgb(48,48,48)",
    names: [:night_rider]
  },
  %{
    code: 237,
    hex: "#3a3a3a",
    rgb: "rgb(58,58,58)",
    names: [:eclipse]
  },
  %{
    code: 238,
    hex: "#444444",
    rgb: "rgb(68,68,68)",
    names: [:charcoal, :tundora]
  },
  %{
    code: 239,
    hex: "#4e4e4e",
    rgb: "rgb(78,78,78)",
    names: [:matterhorn]
  },
  %{
    code: 240,
    hex: "#585858",
    rgb: "rgb(88,88,88)",
    names: [:mortar, :scorpion]
  },
  %{
    code: 241,
    hex: "#626262",
    rgb: "rgb(98,98,98)",
    names: [:dove_gray]
  },
  %{
    code: 242,
    hex: "#6c6c6c",
    rgb: "rgb(108,108,108)",
    names: []
  },
  %{
    code: 243,
    hex: "#767676",
    rgb: "rgb(118,118,118)",
    names: [:empress]
  },
  %{
    code: 244,
    hex: "#808080",
    rgb: "rgb(128,128,128)",
    names: [:grey, :gray]
  },
  %{
    code: 245,
    hex: "#8a8a8a",
    rgb: "rgb(138,138,138)",
    names: [:suva_grey]
  },
  %{
    code: 246,
    hex: "#949494",
    rgb: "rgb(148,148,148)",
    names: [:dusty_gray]
  },
  %{
    code: 247,
    hex: "#9e9e9e",
    rgb: "rgb(158,158,158)",
    names: [:silver_chalice]
  },
  %{
    code: 248,
    hex: "#a8a8a8",
    rgb: "rgb(168,168,168)",
    names: []
  },
  %{
    code: 249,
    hex: "#b2b2b2",
    rgb: "rgb(178,178,178)",
    names: []
  },
  %{
    code: 250,
    hex: "#bcbcbc",
    rgb: "rgb(188,188,188)",
    names: [:silver]
  },
  %{
    code: 251,
    hex: "#c6c6c6",
    rgb: "rgb(198,198,198)",
    names: []
  },
  %{
    code: 252,
    hex: "#d0d0d0",
    rgb: "rgb(208,208,208)",
    names: [:alto]
  },
  %{
    code: 253,
    hex: "#dadada",
    rgb: "rgb(218,218,218)",
    names: []
  },
  %{
    code: 254,
    hex: "#e4e4e4",
    rgb: "rgb(228,228,228)",
    names: [:mercury, :gainsboro]
  },
  %{
    code: 255,
    hex: "#eeeeee",
    rgb: "rgb(238,238,238)",
    names: [:white_smoke, :gallery]
  }
]

config :io_ansi_plus, colors: colors

# For illustration only...
config :io_ansi_plus,
  color_codes: %{
    maroon: 1,
    navy: 4,
    purple: 5,
    fresh_eggplant: 5,
    teal: 6,
    lime: 10,
    __in_between__: :__etcetera__,
    alto: 252,
    mercury: 254,
    gainsboro: 254,
    white_smoke: 255,
    gallery: 255
  }

# Actual configuration...
config :io_ansi_plus,
  color_codes:
    Enum.reduce(colors, %{}, fn
      %{code: _code, names: []}, acc ->
        acc

      %{code: code, names: names}, acc ->
        Enum.reduce(names, acc, &Map.put(&2, &1, code))
    end)
