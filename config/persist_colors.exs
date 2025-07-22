import Config

legacy_colors = [
  %{
    code: 0,
    hex: "000000",
    rgb: {0, 0, 0},
    names: []
  },
  %{
    code: 1,
    hex: "800000",
    rgb: {128, 0, 0},
    names: [:maroon]
  },
  %{
    code: 2,
    hex: "008000",
    rgb: {0, 128, 0},
    names: []
  },
  %{
    code: 3,
    hex: "808000",
    rgb: {128, 128, 0},
    names: []
  },
  %{
    code: 4,
    hex: "000080",
    rgb: {0, 0, 128},
    names: [:navy]
  },
  %{
    code: 5,
    hex: "800080",
    rgb: {128, 0, 128},
    names: [:purple, :fresh_eggplant]
  },
  %{
    code: 6,
    hex: "008080",
    rgb: {0, 128, 128},
    names: [:teal]
  },
  %{
    code: 7,
    hex: "c0c0c0",
    rgb: {192, 192, 192},
    names: []
  },
  %{
    code: 8,
    hex: "808080",
    rgb: {128, 128, 128},
    names: []
  },
  %{
    code: 9,
    hex: "ff0000",
    rgb: {255, 0, 0},
    names: []
  },
  %{
    code: 10,
    hex: "00ff00",
    rgb: {0, 255, 0},
    names: [:lime]
  },
  %{
    code: 11,
    hex: "ffff00",
    rgb: {255, 255, 0},
    names: []
  },
  %{
    code: 12,
    hex: "0000ff",
    rgb: {0, 0, 255},
    names: []
  },
  %{
    code: 13,
    hex: "ff00ff",
    rgb: {255, 0, 255},
    names: []
  },
  %{
    code: 14,
    hex: "00ffff",
    rgb: {0, 255, 255},
    names: []
  },
  %{
    code: 15,
    hex: "ffffff",
    rgb: {255, 255, 255},
    names: []
  },
  %{
    code: 16,
    hex: "000000",
    rgb: {0, 0, 0},
    names: []
  },
  %{
    code: 17,
    hex: "00005f",
    rgb: {0, 0, 95},
    names: [:stratos]
  },
  %{
    code: 18,
    hex: "000087",
    rgb: {0, 0, 135},
    names: [:dark_blue]
  },
  %{
    code: 19,
    hex: "0000af",
    rgb: {0, 0, 175},
    names: [:new_midnight_blue]
  },
  %{
    code: 20,
    hex: "0000d7",
    rgb: {0, 0, 215},
    names: [:medium_blue]
  },
  %{
    code: 21,
    hex: "0000ff",
    rgb: {0, 0, 255},
    names: []
  },
  %{
    code: 22,
    hex: "005f00",
    rgb: {0, 95, 0},
    names: [:dark_green, :camarone]
  },
  %{
    code: 23,
    hex: "005f5f",
    rgb: {0, 95, 95},
    names: [:blue_stone, :dark_slate_gray, :mosque]
  },
  %{
    code: 24,
    hex: "005f87",
    rgb: {0, 95, 135},
    names: [:blue_lagoon, :orient]
  },
  %{
    code: 25,
    hex: "005faf",
    rgb: {0, 95, 175},
    names: [:cobalt, :endeavour]
  },
  %{
    code: 26,
    hex: "005fd7",
    rgb: {0, 95, 215},
    names: [:navy_blue, :science_blue]
  },
  %{
    code: 27,
    hex: "005fff",
    rgb: {0, 95, 255},
    names: [:blue_ribbon]
  },
  %{
    code: 28,
    hex: "008700",
    rgb: {0, 135, 0},
    names: [:japanese_laurel]
  },
  %{
    code: 29,
    hex: "00875f",
    rgb: {0, 135, 95},
    names: [:deep_sea, :observatory]
  },
  %{
    code: 30,
    hex: "008787",
    rgb: {0, 135, 135},
    names: [:dark_cyan]
  },
  %{
    code: 31,
    hex: "0087af",
    rgb: {0, 135, 175},
    names: [:cerulean]
  },
  %{
    code: 32,
    hex: "0087d7",
    rgb: {0, 135, 215},
    names: [:pacific_blue]
  },
  %{
    code: 33,
    hex: "0087ff",
    rgb: {0, 135, 255},
    names: [:dodger_blue]
  },
  %{
    code: 34,
    hex: "00af00",
    rgb: {0, 175, 0},
    names: [:islamic_green]
  },
  %{
    code: 35,
    hex: "00af5f",
    rgb: {0, 175, 95},
    names: [:jade]
  },
  %{
    code: 36,
    hex: "00af87",
    rgb: {0, 175, 135},
    names: [:persian_green]
  },
  %{
    code: 37,
    hex: "00afaf",
    rgb: {0, 175, 175},
    names: [:bondi_blue, :light_sea_green]
  },
  %{
    code: 38,
    hex: "00afd7",
    rgb: {0, 175, 215},
    names: [:iris_blue]
  },
  %{
    code: 39,
    hex: "00afff",
    rgb: {0, 175, 255},
    names: [:deep_sky_blue]
  },
  %{
    code: 40,
    hex: "00d700",
    rgb: {0, 215, 0},
    names: []
  },
  %{
    code: 41,
    hex: "00d75f",
    rgb: {0, 215, 95},
    names: [:malachite]
  },
  %{
    code: 42,
    hex: "00d787",
    rgb: {0, 215, 135},
    names: [:caribbean_green]
  },
  %{
    code: 43,
    hex: "00d7af",
    rgb: {0, 215, 175},
    names: []
  },
  %{
    code: 44,
    hex: "00d7d7",
    rgb: {0, 215, 215},
    names: [:dark_turquoise]
  },
  %{
    code: 45,
    hex: "00d7ff",
    rgb: {0, 215, 255},
    names: []
  },
  %{
    code: 46,
    hex: "00ff00",
    rgb: {0, 255, 0},
    names: []
  },
  %{
    code: 47,
    hex: "00ff5f",
    rgb: {0, 255, 95},
    names: []
  },
  %{
    code: 48,
    hex: "00ff87",
    rgb: {0, 255, 135},
    names: [:spring_green]
  },
  %{
    code: 49,
    hex: "00ffaf",
    rgb: {0, 255, 175},
    names: [:medium_spring_green]
  },
  %{
    code: 50,
    hex: "00ffd7",
    rgb: {0, 255, 215},
    names: [:bright_turquoise]
  },
  %{
    code: 51,
    hex: "00ffff",
    rgb: {0, 255, 255},
    names: [:aqua]
  },
  %{
    code: 52,
    hex: "5f0000",
    rgb: {95, 0, 0},
    names: [:rosewood]
  },
  %{
    code: 53,
    hex: "5f005f",
    rgb: {95, 0, 95},
    names: [:tyrian_purple]
  },
  %{
    code: 54,
    hex: "5f0087",
    rgb: {95, 0, 135},
    names: [:indigo]
  },
  %{
    code: 55,
    hex: "5f00af",
    rgb: {95, 0, 175},
    names: []
  },
  %{
    code: 56,
    hex: "5f00d7",
    rgb: {95, 0, 215},
    names: [:electric_indigo]
  },
  %{
    code: 57,
    hex: "5f00ff",
    rgb: {95, 0, 255},
    names: [:blue_violet]
  },
  %{
    code: 58,
    hex: "5f5f00",
    rgb: {95, 95, 0},
    names: [:verdun_green]
  },
  %{
    code: 59,
    hex: "5f5f5f",
    rgb: {95, 95, 95},
    names: [:dim_gray]
  },
  %{
    code: 60,
    hex: "5f5f87",
    rgb: {95, 95, 135},
    names: [:kimberly]
  },
  %{
    code: 61,
    hex: "5f5faf",
    rgb: {95, 95, 175},
    names: [:rich_blue]
  },
  %{
    code: 62,
    hex: "5f5fd7",
    rgb: {95, 95, 215},
    names: [:slate_blue]
  },
  %{
    code: 63,
    hex: "5f5fff",
    rgb: {95, 95, 255},
    names: [:neon_blue, :royal_blue]
  },
  %{
    code: 64,
    hex: "5f8700",
    rgb: {95, 135, 0},
    names: [:limeade]
  },
  %{
    code: 65,
    hex: "5f875f",
    rgb: {95, 135, 95},
    names: [:hippie_green]
  },
  %{
    code: 66,
    hex: "5f8787",
    rgb: {95, 135, 135},
    names: [:hoki]
  },
  %{
    code: 67,
    hex: "5f87af",
    rgb: {95, 135, 175},
    names: [:steel_blue, :air_force_blue]
  },
  %{
    code: 68,
    hex: "5f87d7",
    rgb: {95, 135, 215},
    names: [:picton_blue]
  },
  %{
    code: 69,
    hex: "5f87ff",
    rgb: {95, 135, 255},
    names: [:cornflower_blue, :light_slate_blue]
  },
  %{
    code: 70,
    hex: "5faf00",
    rgb: {95, 175, 0},
    names: []
  },
  %{
    code: 71,
    hex: "5faf5f",
    rgb: {95, 175, 95},
    names: [:fern]
  },
  %{
    code: 72,
    hex: "5faf87",
    rgb: {95, 175, 135},
    names: [:cadet_blue, :keppel]
  },
  %{
    code: 73,
    hex: "5fafaf",
    rgb: {95, 175, 175},
    names: [:fountain_blue]
  },
  %{
    code: 74,
    hex: "5fafd7",
    rgb: {95, 175, 215},
    names: [:shakespeare]
  },
  %{
    code: 75,
    hex: "5fafff",
    rgb: {95, 175, 255},
    names: [:maya_blue]
  },
  %{
    code: 76,
    hex: "5fd700",
    rgb: {95, 215, 0},
    names: [:bright_green]
  },
  %{
    code: 77,
    hex: "5fd75f",
    rgb: {95, 215, 95},
    names: []
  },
  %{
    code: 78,
    hex: "5fd787",
    rgb: {95, 215, 135},
    names: [:pastel_green]
  },
  %{
    code: 79,
    hex: "5fd7af",
    rgb: {95, 215, 175},
    names: []
  },
  %{
    code: 80,
    hex: "5fd7d7",
    rgb: {95, 215, 215},
    names: [:medium_turquoise]
  },
  %{
    code: 81,
    hex: "5fd7ff",
    rgb: {95, 215, 255},
    names: [:malibu]
  },
  %{
    code: 82,
    hex: "5fff00",
    rgb: {95, 255, 0},
    names: []
  },
  %{
    code: 83,
    hex: "5fff5f",
    rgb: {95, 255, 95},
    names: [:screamin_green]
  },
  %{
    code: 84,
    hex: "5fff87",
    rgb: {95, 255, 135},
    names: []
  },
  %{
    code: 85,
    hex: "5fffaf",
    rgb: {95, 255, 175},
    names: []
  },
  %{
    code: 86,
    hex: "5fffd7",
    rgb: {95, 255, 215},
    names: []
  },
  %{
    code: 87,
    hex: "5fffff",
    rgb: {95, 255, 255},
    names: [:baby_blue]
  },
  %{
    code: 88,
    hex: "870000",
    rgb: {135, 0, 0},
    names: [:dark_red]
  },
  %{
    code: 89,
    hex: "87005f",
    rgb: {135, 0, 95},
    names: [:eggplant]
  },
  %{
    code: 90,
    hex: "870087",
    rgb: {135, 0, 135},
    names: [:dark_magenta]
  },
  %{
    code: 91,
    hex: "8700af",
    rgb: {135, 0, 175},
    names: []
  },
  %{
    code: 92,
    hex: "8700d7",
    rgb: {135, 0, 215},
    names: [:dark_violet]
  },
  %{
    code: 93,
    hex: "8700ff",
    rgb: {135, 0, 255},
    names: [:electric_violet]
  },
  %{
    code: 94,
    hex: "875f00",
    rgb: {135, 95, 0},
    names: [:brown]
  },
  %{
    code: 95,
    hex: "875f5f",
    rgb: {135, 95, 95},
    names: [:light_wood]
  },
  %{
    code: 96,
    hex: "875f87",
    rgb: {135, 95, 135},
    names: [:trendy_pink]
  },
  %{
    code: 97,
    hex: "875faf",
    rgb: {135, 95, 175},
    names: [:blue_marguerite]
  },
  %{
    code: 98,
    hex: "875fd7",
    rgb: {135, 95, 215},
    names: []
  },
  %{
    code: 99,
    hex: "875fff",
    rgb: {135, 95, 255},
    names: []
  },
  %{
    code: 100,
    hex: "878700",
    rgb: {135, 135, 0},
    names: [:olive]
  },
  %{
    code: 101,
    hex: "87875f",
    rgb: {135, 135, 95},
    names: [:bandicoot]
  },
  %{
    code: 102,
    hex: "878787",
    rgb: {135, 135, 135},
    names: []
  },
  %{
    code: 103,
    hex: "8787af",
    rgb: {135, 135, 175},
    names: [:ship_cove, :light_slate_grey]
  },
  %{
    code: 104,
    hex: "8787d7",
    rgb: {135, 135, 215},
    names: [:medium_purple, :portage]
  },
  %{
    code: 105,
    hex: "8787ff",
    rgb: {135, 135, 255},
    names: []
  },
  %{
    code: 106,
    hex: "87af00",
    rgb: {135, 175, 0},
    names: [:citrus]
  },
  %{
    code: 107,
    hex: "87af5f",
    rgb: {135, 175, 95},
    names: [:chelsea_cucumber]
  },
  %{
    code: 108,
    hex: "87af87",
    rgb: {135, 175, 135},
    names: [:dark_sea_green]
  },
  %{
    code: 109,
    hex: "87afaf",
    rgb: {135, 175, 175},
    names: [:ziggurat]
  },
  %{
    code: 110,
    hex: "87afd7",
    rgb: {135, 175, 215},
    names: [:seagull]
  },
  %{
    code: 111,
    hex: "87afff",
    rgb: {135, 175, 255},
    names: []
  },
  %{
    code: 112,
    hex: "87d700",
    rgb: {135, 215, 0},
    names: [:lawn_green]
  },
  %{
    code: 113,
    hex: "87d75f",
    rgb: {135, 215, 95},
    names: []
  },
  %{
    code: 114,
    hex: "87d787",
    rgb: {135, 215, 135},
    names: [:gossip]
  },
  %{
    code: 115,
    hex: "87d7af",
    rgb: {135, 215, 175},
    names: [:bermuda]
  },
  %{
    code: 116,
    hex: "87d7d7",
    rgb: {135, 215, 215},
    names: [:riptide]
  },
  %{
    code: 117,
    hex: "87d7ff",
    rgb: {135, 215, 255},
    names: [:columbia_blue]
  },
  %{
    code: 118,
    hex: "87ff00",
    rgb: {135, 255, 0},
    names: [:chartreuse]
  },
  %{
    code: 119,
    hex: "87ff5f",
    rgb: {135, 255, 95},
    names: []
  },
  %{
    code: 120,
    hex: "87ff87",
    rgb: {135, 255, 135},
    names: [:mint_green]
  },
  %{
    code: 121,
    hex: "87ffaf",
    rgb: {135, 255, 175},
    names: [:pale_green]
  },
  %{
    code: 122,
    hex: "87ffd7",
    rgb: {135, 255, 215},
    names: []
  },
  %{
    code: 123,
    hex: "87ffff",
    rgb: {135, 255, 255},
    names: [:electric_blue]
  },
  %{
    code: 124,
    hex: "af0000",
    rgb: {175, 0, 0},
    names: [:free_speech_red]
  },
  %{
    code: 125,
    hex: "af005f",
    rgb: {175, 0, 95},
    names: [:flirt]
  },
  %{
    code: 126,
    hex: "af0087",
    rgb: {175, 0, 135},
    names: [:medium_violet_red]
  },
  %{
    code: 127,
    hex: "af00af",
    rgb: {175, 0, 175},
    names: [:deep_magenta]
  },
  %{
    code: 128,
    hex: "af00d7",
    rgb: {175, 0, 215},
    names: []
  },
  %{
    code: 129,
    hex: "af00ff",
    rgb: {175, 0, 255},
    names: [:electric_purple]
  },
  %{
    code: 130,
    hex: "af5f00",
    rgb: {175, 95, 0},
    names: [:tenne, :rose_of_sharon]
  },
  %{
    code: 131,
    hex: "af5f5f",
    rgb: {175, 95, 95},
    names: [:coral_tree]
  },
  %{
    code: 132,
    hex: "af5f87",
    rgb: {175, 95, 135},
    names: [:tapestry]
  },
  %{
    code: 133,
    hex: "af5faf",
    rgb: {175, 95, 175},
    names: [:violet_blue]
  },
  %{
    code: 134,
    hex: "af5fd7",
    rgb: {175, 95, 215},
    names: [:medium_orchid]
  },
  %{
    code: 135,
    hex: "af5fff",
    rgb: {175, 95, 255},
    names: []
  },
  %{
    code: 136,
    hex: "af8700",
    rgb: {175, 135, 0},
    names: [:dark_goldenrod]
  },
  %{
    code: 137,
    hex: "af875f",
    rgb: {175, 135, 95},
    names: [:teak]
  },
  %{
    code: 138,
    hex: "af8787",
    rgb: {175, 135, 135},
    names: [:rosy_brown, :thatch]
  },
  %{
    code: 139,
    hex: "af87af",
    rgb: {175, 135, 175},
    names: [:london_hue]
  },
  %{
    code: 140,
    hex: "af87d7",
    rgb: {175, 135, 215},
    names: [:wisteria]
  },
  %{
    code: 141,
    hex: "af87ff",
    rgb: {175, 135, 255},
    names: []
  },
  %{
    code: 142,
    hex: "afaf00",
    rgb: {175, 175, 0},
    names: [:buddha_gold]
  },
  %{
    code: 143,
    hex: "afaf5f",
    rgb: {175, 175, 95},
    names: [:olive_green, :dark_khaki]
  },
  %{
    code: 144,
    hex: "afaf87",
    rgb: {175, 175, 135},
    names: [:neutral_green]
  },
  %{
    code: 145,
    hex: "afafaf",
    rgb: {175, 175, 175},
    names: [:dark_gray]
  },
  %{
    code: 146,
    hex: "afafd7",
    rgb: {175, 175, 215},
    names: [:moon_raker]
  },
  %{
    code: 147,
    hex: "afafff",
    rgb: {175, 175, 255},
    names: [:light_steel_blue]
  },
  %{
    code: 148,
    hex: "afd700",
    rgb: {175, 215, 0},
    names: [:spring_bud]
  },
  %{
    code: 149,
    hex: "afd75f",
    rgb: {175, 215, 95},
    names: [:conifer]
  },
  %{
    code: 150,
    hex: "afd787",
    rgb: {175, 215, 135},
    names: [:feijoa]
  },
  %{
    code: 151,
    hex: "afd7af",
    rgb: {175, 215, 175},
    names: [:chinook]
  },
  %{
    code: 152,
    hex: "afd7d7",
    rgb: {175, 215, 215},
    names: [:scandal]
  },
  %{
    code: 153,
    hex: "afd7ff",
    rgb: {175, 215, 255},
    names: [:anakiwa]
  },
  %{
    code: 154,
    hex: "afff00",
    rgb: {175, 255, 0},
    names: [:green_yellow]
  },
  %{
    code: 155,
    hex: "afff5f",
    rgb: {175, 255, 95},
    names: []
  },
  %{
    code: 156,
    hex: "afff87",
    rgb: {175, 255, 135},
    names: []
  },
  %{
    code: 157,
    hex: "afffaf",
    rgb: {175, 255, 175},
    names: []
  },
  %{
    code: 158,
    hex: "afffd7",
    rgb: {175, 255, 215},
    names: [:aero_blue]
  },
  %{
    code: 159,
    hex: "afffff",
    rgb: {175, 255, 255},
    names: [:french_pass]
  },
  %{
    code: 160,
    hex: "d70000",
    rgb: {215, 0, 0},
    names: [:guardsman_red]
  },
  %{
    code: 161,
    hex: "d7005f",
    rgb: {215, 0, 95},
    names: [:razzmatazz]
  },
  %{
    code: 162,
    hex: "d70087",
    rgb: {215, 0, 135},
    names: [:hollywood_cerise]
  },
  %{
    code: 163,
    hex: "d700af",
    rgb: {215, 0, 175},
    names: []
  },
  %{
    code: 164,
    hex: "d700d7",
    rgb: {215, 0, 215},
    names: [:purple_pizzazz]
  },
  %{
    code: 165,
    hex: "d700ff",
    rgb: {215, 0, 255},
    names: [:psychedelic_purple]
  },
  %{
    code: 166,
    hex: "d75f00",
    rgb: {215, 95, 0},
    names: [:tenn]
  },
  %{
    code: 167,
    hex: "d75f5f",
    rgb: {215, 95, 95},
    names: [:indian_red, :roman]
  },
  %{
    code: 168,
    hex: "d75f87",
    rgb: {215, 95, 135},
    names: [:pale_violet_red]
  },
  %{
    code: 169,
    hex: "d75faf",
    rgb: {215, 95, 175},
    names: [:hopbush]
  },
  %{
    code: 170,
    hex: "d75fd7",
    rgb: {215, 95, 215},
    names: [:orchid]
  },
  %{
    code: 171,
    hex: "d75fff",
    rgb: {215, 95, 255},
    names: [:heliotrope]
  },
  %{
    code: 172,
    hex: "d78700",
    rgb: {215, 135, 0},
    names: [:mango_tango, :chocolate]
  },
  %{
    code: 173,
    hex: "d7875f",
    rgb: {215, 135, 95},
    names: [:copper]
  },
  %{
    code: 174,
    hex: "d78787",
    rgb: {215, 135, 135},
    names: [:my_pink]
  },
  %{
    code: 175,
    hex: "d787af",
    rgb: {215, 135, 175},
    names: [:kobi]
  },
  %{
    code: 176,
    hex: "d787d7",
    rgb: {215, 135, 215},
    names: [:plum]
  },
  %{
    code: 177,
    hex: "d787ff",
    rgb: {215, 135, 255},
    names: [:violet]
  },
  %{
    code: 178,
    hex: "d7af00",
    rgb: {215, 175, 0},
    names: [:goldenrod, :golden_poppy, :corn]
  },
  %{
    code: 179,
    hex: "d7af5f",
    rgb: {215, 175, 95},
    names: [:equator]
  },
  %{
    code: 180,
    hex: "d7af87",
    rgb: {215, 175, 135},
    names: [:tan, :calico]
  },
  %{
    code: 181,
    hex: "d7afaf",
    rgb: {215, 175, 175},
    names: [:pink_flare]
  },
  %{
    code: 182,
    hex: "d7afd7",
    rgb: {215, 175, 215},
    names: [:french_lilac]
  },
  %{
    code: 183,
    hex: "d7afff",
    rgb: {215, 175, 255},
    names: [:mauve]
  },
  %{
    code: 184,
    hex: "d7d700",
    rgb: {215, 215, 0},
    names: [:school_bus_yellow]
  },
  %{
    code: 185,
    hex: "d7d75f",
    rgb: {215, 215, 95},
    names: [:tacha]
  },
  %{
    code: 186,
    hex: "d7d787",
    rgb: {215, 215, 135},
    names: [:deco]
  },
  %{
    code: 187,
    hex: "d7d7af",
    rgb: {215, 215, 175},
    names: [:aths_special]
  },
  %{
    code: 188,
    hex: "d7d7d7",
    rgb: {215, 215, 215},
    names: [:light_grey, :light_gray]
  },
  %{
    code: 189,
    hex: "d7d7ff",
    rgb: {215, 215, 255},
    names: [:lavender_blue]
  },
  %{
    code: 190,
    hex: "d7ff00",
    rgb: {215, 255, 0},
    names: [:chartreuse_yellow]
  },
  %{
    code: 191,
    hex: "d7ff5f",
    rgb: {215, 255, 95},
    names: [:laser_lemon]
  },
  %{
    code: 192,
    hex: "d7ff87",
    rgb: {215, 255, 135},
    names: [:canary]
  },
  %{
    code: 193,
    hex: "d7ffaf",
    rgb: {215, 255, 175},
    names: [:reef]
  },
  %{
    code: 194,
    hex: "d7ffd7",
    rgb: {215, 255, 215},
    names: [:honeydew, :beige]
  },
  %{
    code: 195,
    hex: "d7ffff",
    rgb: {215, 255, 255},
    names: [:oyster_bay]
  },
  %{
    code: 196,
    hex: "ff0000",
    rgb: {255, 0, 0},
    names: []
  },
  %{
    code: 197,
    hex: "ff005f",
    rgb: {255, 0, 95},
    names: [:rose]
  },
  %{
    code: 198,
    hex: "ff0087",
    rgb: {255, 0, 135},
    names: [:deep_pink]
  },
  %{
    code: 199,
    hex: "ff00af",
    rgb: {255, 0, 175},
    names: []
  },
  %{
    code: 200,
    hex: "ff00d7",
    rgb: {255, 0, 215},
    names: [:hot_magenta]
  },
  %{
    code: 201,
    hex: "ff00ff",
    rgb: {255, 0, 255},
    names: [:fuchsia]
  },
  %{
    code: 202,
    hex: "ff5f00",
    rgb: {255, 95, 0},
    names: [:orange_red, :safety_orange]
  },
  %{
    code: 203,
    hex: "ff5f5f",
    rgb: {255, 95, 95},
    names: [:bittersweet]
  },
  %{
    code: 204,
    hex: "ff5f87",
    rgb: {255, 95, 135},
    names: [:wild_watermelon]
  },
  %{
    code: 205,
    hex: "ff5faf",
    rgb: {255, 95, 175},
    names: [:hot_pink]
  },
  %{
    code: 206,
    hex: "ff5fd7",
    rgb: {255, 95, 215},
    names: [:neon_pink]
  },
  %{
    code: 207,
    hex: "ff5fff",
    rgb: {255, 95, 255},
    names: [:pink_flamingo]
  },
  %{
    code: 208,
    hex: "ff8700",
    rgb: {255, 135, 0},
    names: [:dark_orange]
  },
  %{
    code: 209,
    hex: "ff875f",
    rgb: {255, 135, 95},
    names: [:coral]
  },
  %{
    code: 210,
    hex: "ff8787",
    rgb: {255, 135, 135},
    names: [:light_coral, :mona_lisa]
  },
  %{
    code: 211,
    hex: "ff87af",
    rgb: {255, 135, 175},
    names: [:tickle_me_pink]
  },
  %{
    code: 212,
    hex: "ff87d7",
    rgb: {255, 135, 215},
    names: []
  },
  %{
    code: 213,
    hex: "ff87ff",
    rgb: {255, 135, 255},
    names: [:fuchsia_pink]
  },
  %{
    code: 214,
    hex: "ffaf00",
    rgb: {255, 175, 0},
    names: [:orange]
  },
  %{
    code: 215,
    hex: "ffaf5f",
    rgb: {255, 175, 95},
    names: [:sandy_brown, :rajah]
  },
  %{
    code: 216,
    hex: "ffaf87",
    rgb: {255, 175, 135},
    names: [:hit_pink, :macaroni_and_cheese]
  },
  %{
    code: 217,
    hex: "ffafaf",
    rgb: {255, 175, 175},
    names: [:melon]
  },
  %{
    code: 218,
    hex: "ffafd7",
    rgb: {255, 175, 215},
    names: [:cotton_candy]
  },
  %{
    code: 219,
    hex: "ffafff",
    rgb: {255, 175, 255},
    names: [:lavender_rose]
  },
  %{
    code: 220,
    hex: "ffd700",
    rgb: {255, 215, 0},
    names: [:gold]
  },
  %{
    code: 221,
    hex: "ffd75f",
    rgb: {255, 215, 95},
    names: [:dandelion]
  },
  %{
    code: 222,
    hex: "ffd787",
    rgb: {255, 215, 135},
    names: [:khaki, :salomie]
  },
  %{
    code: 223,
    hex: "ffd7af",
    rgb: {255, 215, 175},
    names: [:moccasin, :navajo_white]
  },
  %{
    code: 224,
    hex: "ffd7d7",
    rgb: {255, 215, 215},
    names: [:mysty_rose]
  },
  %{
    code: 225,
    hex: "ffd7ff",
    rgb: {255, 215, 255},
    names: [:lavender_blush]
  },
  %{
    code: 226,
    hex: "ffff00",
    rgb: {255, 255, 0},
    names: []
  },
  %{
    code: 227,
    hex: "ffff5f",
    rgb: {255, 255, 95},
    names: []
  },
  %{
    code: 228,
    hex: "ffff87",
    rgb: {255, 255, 135},
    names: [:dolly]
  },
  %{
    code: 229,
    hex: "ffffaf",
    rgb: {255, 255, 175},
    names: [:portafino]
  },
  %{
    code: 230,
    hex: "ffffd7",
    rgb: {255, 255, 215},
    names: [:cream, :cumulus]
  },
  %{
    code: 231,
    hex: "ffffff",
    rgb: {255, 255, 255},
    names: []
  },
  %{
    code: 232,
    hex: "080808",
    rgb: {8, 8, 8},
    names: [:cod_gray]
  },
  %{
    code: 233,
    hex: "121212",
    rgb: {18, 18, 18},
    names: []
  },
  %{
    code: 234,
    hex: "1c1c1c",
    rgb: {28, 28, 28},
    names: [:nero]
  },
  %{
    code: 235,
    hex: "262626",
    rgb: {38, 38, 38},
    names: [:mine_shaft]
  },
  %{
    code: 236,
    hex: "303030",
    rgb: {48, 48, 48},
    names: [:night_rider]
  },
  %{
    code: 237,
    hex: "3a3a3a",
    rgb: {58, 58, 58},
    names: [:eclipse]
  },
  %{
    code: 238,
    hex: "444444",
    rgb: {68, 68, 68},
    names: [:charcoal, :tundora]
  },
  %{
    code: 239,
    hex: "4e4e4e",
    rgb: {78, 78, 78},
    names: [:matterhorn]
  },
  %{
    code: 240,
    hex: "585858",
    rgb: {88, 88, 88},
    names: [:mortar, :scorpion]
  },
  %{
    code: 241,
    hex: "626262",
    rgb: {98, 98, 98},
    names: [:dove_gray]
  },
  %{
    code: 242,
    hex: "6c6c6c",
    rgb: {108, 108, 108},
    names: []
  },
  %{
    code: 243,
    hex: "767676",
    rgb: {118, 118, 118},
    names: [:empress]
  },
  %{
    code: 244,
    hex: "808080",
    rgb: {128, 128, 128},
    names: [:grey, :gray]
  },
  %{
    code: 245,
    hex: "8a8a8a",
    rgb: {138, 138, 138},
    names: [:suva_grey]
  },
  %{
    code: 246,
    hex: "949494",
    rgb: {148, 148, 148},
    names: [:dusty_gray]
  },
  %{
    code: 247,
    hex: "9e9e9e",
    rgb: {158, 158, 158},
    names: [:silver_chalice]
  },
  %{
    code: 248,
    hex: "a8a8a8",
    rgb: {168, 168, 168},
    names: []
  },
  %{
    code: 249,
    hex: "b2b2b2",
    rgb: {178, 178, 178},
    names: []
  },
  %{
    code: 250,
    hex: "bcbcbc",
    rgb: {188, 188, 188},
    names: [:silver]
  },
  %{
    code: 251,
    hex: "c6c6c6",
    rgb: {198, 198, 198},
    names: []
  },
  %{
    code: 252,
    hex: "d0d0d0",
    rgb: {208, 208, 208},
    names: [:alto]
  },
  %{
    code: 253,
    hex: "dadada",
    rgb: {218, 218, 218},
    names: []
  },
  %{
    code: 254,
    hex: "e4e4e4",
    rgb: {228, 228, 228},
    names: [:mercury, :gainsboro]
  },
  %{
    code: 255,
    hex: "eeeeee",
    rgb: {238, 238, 238},
    names: [:white_smoke, :gallery]
  }
]

standard_colors = [
  %{
    index: 0,
    name: :black,
    hex: "000000",
    rgb: {0, 0, 0},
    hsl: {0.0, 0.0, 0.0},
    foreground: "\e[30m",
    background: "\e[40m"
  },
  %{
    index: 1,
    name: :red,
    hex: "ff0000",
    rgb: {255, 0, 0},
    hsl: {0.0, 1.0, 0.5},
    foreground: "\e[31m",
    background: "\e[41m"
  },
  %{
    index: 2,
    name: :green,
    hex: "00ff00",
    rgb: {0, 255, 0},
    hsl: {120.0, 1.0, 0.5},
    foreground: "\e[32m",
    background: "\e[42m"
  },
  %{
    index: 3,
    name: :yellow,
    hex: "ffff00",
    rgb: {255, 255, 0},
    hsl: {60.0, 1.0, 0.5},
    foreground: "\e[33m",
    background: "\e[43m"
  },
  %{
    index: 4,
    name: :blue,
    hex: "0000ff",
    rgb: {0, 0, 255},
    hsl: {240.0, 1.0, 0.5},
    foreground: "\e[34m",
    background: "\e[44m"
  },
  %{
    index: 5,
    name: :magenta,
    hex: "ff00ff",
    rgb: {255, 0, 255},
    hsl: {300.0, 1.0, 0.5},
    foreground: "\e[35m",
    background: "\e[45m"
  },
  %{
    index: 6,
    name: :cyan,
    hex: "00ffff",
    rgb: {0, 255, 255},
    hsl: {180.0, 1.0, 0.5},
    foreground: "\e[36m",
    background: "\e[46m"
  },
  %{
    index: 7,
    name: :white,
    hex: "ffffff",
    rgb: {255, 255, 255},
    hsl: {0.0, 0.0, 1.0},
    foreground: "\e[37m",
    background: "\e[47m"
  },
  # Bright variants...
  %{
    index: 8,
    name: :light_black,
    hex: "222024",
    rgb: {34, 32, 36},
    hsl: {270.0, 0.058823529411764705, 0.13333333333333333},
    foreground: "\e[90m",
    background: "\e[100m"
  },
  %{
    index: 9,
    name: :light_red,
    hex: "ff000d",
    rgb: {255, 0, 13},
    hsl: {356.94117647058823, 1.0, 0.5},
    foreground: "\e[91m",
    background: "\e[101m"
  },
  %{
    index: 10,
    name: :light_green,
    hex: "aaff00",
    rgb: {170, 255, 0},
    hsl: {80.0, 1.0, 0.5},
    foreground: "\e[92m",
    background: "\e[102m"
  },
  %{
    index: 11,
    name: :light_yellow,
    hex: "ffea00",
    rgb: {255, 234, 0},
    hsl: {55.05882352941176, 1.0, 0.5},
    foreground: "\e[93m",
    background: "\e[103m"
  },
  %{
    index: 12,
    name: :light_blue,
    hex: "0096ff",
    rgb: {0, 150, 255},
    hsl: {204.70588235294116, 1.0, 0.5},
    foreground: "\e[94m",
    background: "\e[104m"
  },
  %{
    index: 13,
    name: :light_magenta,
    hex: "ff08e8",
    rgb: {255, 8, 232},
    hsl: {305.58704453441294, 1.0, 0.5156862745098039},
    foreground: "\e[95m",
    background: "\e[105m"
  },
  %{
    index: 14,
    name: :light_cyan,
    hex: "0affff",
    rgb: {255, 255, 10},
    hsl: {60.0, 1.0, 0.5196078431372549},
    foreground: "\e[96m",
    background: "\e[106m"
  },
  %{
    index: 15,
    name: :light_white,
    hex: "fdfeff",
    rgb: {253, 254, 255},
    hsl: {210.0, 1.0, 0.996078431372549},
    foreground: "\e[97m",
    background: "\e[107m"
  }
]

standard_color_names =
  for %{index: index, name: name} <- standard_colors, into: %{} do
    {index, name}
  end

# Reference https://www.wowsignal.io/articles/xterm256

colors = [
  %{
    code: 0,
    hex: "000000",
    rgb: {0, 0, 0},
    hsl: {0.0, 0.0, 0.0},
    foreground: "\e[38;5;0m",
    background: "\e[48;5;0m",
    fave_name: :black_hole,
    legacy_names: [],
    names: [
      [:black],
      [:vantablack],
      :black_hole,
      :armor_wash,
      :registration_black
    ]
  },
  %{
    code: 1,
    hex: "800000",
    rgb: {128, 0, 0},
    hsl: {0.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;1m",
    background: "\e[48;5;1m",
    legacy_names: [],
    names: [:maroon, :salami, :dark_red, :chanticleer, :sacrifice_altar]
  },
  %{
    code: 2,
    hex: "008000",
    rgb: {0, 128, 0},
    hsl: {120.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;2m",
    background: "\e[48;5;2m",
    legacy_names: [],
    names: [:hulk, :fine_pine, :moth_green, :green_hills, :lucky_clover]
  },
  %{
    code: 3,
    hex: "808000",
    rgb: {128, 128, 0},
    hsl: {60.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;3m",
    background: "\e[48;5;3m",
    legacy_names: [],
    names: [
      :heart_gold,
      :verde_tropa,
      :swamp_green,
      :drably_olive,
      :mongolian_plateau
    ]
  },
  %{
    code: 4,
    hex: "000080",
    rgb: {0, 0, 128},
    hsl: {240.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;4m",
    background: "\e[48;5;4m",
    legacy_names: [:navy],
    names: [
      :navy_blue,
      :deep_blue,
      :scotch_blue,
      :yves_klein_blue,
      :midnight_in_tokyo
    ]
  },
  %{
    code: 5,
    hex: "800080",
    rgb: {128, 0, 128},
    hsl: {300.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;5m",
    background: "\e[48;5;5m",
    legacy_names: [:fresh_eggplant],
    names: [
      :purple,
      [:mardi_gras],
      :ultraberry,
      :aunt_violet,
      :philippine_violet
    ]
  },
  %{
    code: 6,
    hex: "008080",
    rgb: {0, 128, 128},
    hsl: {180.0, 1.0, 0.25098039215686274},
    foreground: "\e[38;5;6m",
    background: "\e[48;5;6m",
    legacy_names: [],
    names: [:teal, :pond_bath, :macquarie, :belly_flop, :windows_95_desktop]
  },
  %{
    code: 7,
    hex: "c0c0c0",
    rgb: {192, 192, 192},
    hsl: {0.0, 0.0, 0.7529411764705882},
    foreground: "\e[38;5;7m",
    background: "\e[48;5;7m",
    legacy_names: [],
    names: [
      :silver,
      :waxwing,
      :stonewall_grey,
      :neo_tokyo_grey,
      :silver_tipped_sage
    ]
  },
  %{
    code: 8,
    hex: "808080",
    rgb: {128, 128, 128},
    hsl: {0.0, 0.0, 0.5019607843137255},
    foreground: "\e[38;5;8m",
    background: "\e[48;5;8m",
    legacy_names: [],
    names: [:grey, :mt_rushmore, :trolley_grey, :captain_nemo, :pound_sterling]
  },
  %{
    code: 9,
    hex: "ff0000",
    rgb: {255, 0, 0},
    hsl: {0.0, 1.0, 0.5},
    foreground: "\e[38;5;9m",
    background: "\e[48;5;9m",
    fave_name: :encarnado,
    legacy_names: [],
    names: [
      [:red],
      :encarnado,
      [:fire_engine],
      :left_on_red,
      :rainbow_s_outer_rim
    ]
  },
  %{
    code: 10,
    hex: "00ff00",
    rgb: {0, 255, 0},
    hsl: {120.0, 1.0, 0.5},
    foreground: "\e[38;5;10m",
    background: "\e[48;5;10m",
    fave_name: :spring,
    legacy_names: [:lime],
    names: [[:green], :spring, [:ega_green], :venom_dart, :electric_pickle]
  },
  %{
    code: 11,
    hex: "ffff00",
    rgb: {255, 255, 0},
    hsl: {60.0, 1.0, 0.5},
    foreground: "\e[38;5;11m",
    background: "\e[48;5;11m",
    fave_name: :bright_yellow,
    legacy_names: [],
    names: [
      [:yellow],
      [:bat_signal],
      :lemon_glacier,
      :bright_yellow,
      :yell_for_yellow
    ]
  },
  %{
    code: 12,
    hex: "0000ff",
    rgb: {0, 0, 255},
    hsl: {240.0, 1.0, 0.5},
    foreground: "\e[38;5;12m",
    background: "\e[48;5;12m",
    fave_name: :strong_blue,
    legacy_names: [],
    names: [
      [:blue],
      :strong_blue,
      [:primary_blue],
      :star_of_david,
      :graphical_80_s_sky
    ]
  },
  %{
    code: 13,
    hex: "ff00ff",
    rgb: {255, 0, 255},
    hsl: {300.0, 1.0, 0.5},
    foreground: "\e[38;5;13m",
    background: "\e[48;5;13m",
    fave_name: :brusque_pink,
    legacy_names: [],
    names: [
      [:magenta],
      :brusque_pink,
      :fresh_neon_pink,
      :rainbow_s_inner_rim,
      :sixteen_million_pink
    ]
  },
  %{
    code: 14,
    hex: "00ffff",
    rgb: {0, 255, 255},
    hsl: {180.0, 1.0, 0.5},
    foreground: "\e[38;5;14m",
    background: "\e[48;5;14m",
    legacy_names: [],
    names: [
      :aqua,
      [:arctic_water],
      :agressive_aqua,
      :spanish_sky_blue,
      :fluorescent_turquoise
    ]
  },
  %{
    code: 15,
    hex: "ffffff",
    rgb: {255, 255, 255},
    hsl: {0.0, 0.0, 1.0},
    foreground: "\e[38;5;15m",
    background: "\e[48;5;15m",
    fave_name: :pale_grey,
    legacy_names: [],
    names: [
      [:white],
      :pale_grey,
      [:whitecap_snow],
      :white_as_heaven,
      :polar_bear_in_a_blizzard
    ]
  },
  %{
    code: 16,
    hex: "000000",
    rgb: {0, 0, 0},
    hsl: {0.0, 0.0, 0.0},
    foreground: "\e[38;5;16m",
    background: "\e[48;5;16m",
    fave_name: :vantablack,
    legacy_names: [],
    names: [
      [:black],
      :vantablack,
      [:black_hole],
      [:armor_wash],
      [:registration_black]
    ]
  },
  %{
    code: 17,
    hex: "00005f",
    rgb: {0, 0, 95},
    hsl: {240.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;17m",
    background: "\e[48;5;17m",
    fave_name: :stratos,
    legacy_names: [:stratos],
    names: [
      :d_darx_blue,
      :abyssal_blue,
      :alucard_s_night,
      :prussian_nights,
      :alone_in_the_dark
    ]
  },
  %{
    code: 18,
    hex: "000087",
    rgb: {0, 0, 135},
    hsl: {240.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;18m",
    background: "\e[48;5;18m",
    fave_name: :dark_blue,
    legacy_names: [:dark_blue],
    names: [
      [:navy_blue],
      [:scotch_blue],
      :phthalo_blue,
      [:yves_klein_blue],
      [:midnight_in_tokyo]
    ]
  },
  %{
    code: 19,
    hex: "0000af",
    rgb: {0, 0, 175},
    hsl: {240.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;19m",
    background: "\e[48;5;19m",
    legacy_names: [:new_midnight_blue],
    names: [
      :cobalt,
      :keese_blue,
      :bohemian_blue,
      :antarctic_circle,
      :traditional_royal_blue
    ]
  },
  %{
    code: 20,
    hex: "0000d7",
    rgb: {0, 0, 215},
    hsl: {240.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;20m",
    background: "\e[48;5;20m",
    legacy_names: [],
    names: [
      :pure_blue,
      :medium_blue,
      :bluealicious,
      :lady_of_the_sea,
      :nightfall_in_suburbia
    ]
  },
  %{
    code: 21,
    hex: "0000ff",
    rgb: {0, 0, 255},
    hsl: {240.0, 1.0, 0.5},
    foreground: "\e[38;5;21m",
    background: "\e[48;5;21m",
    fave_name: :primary_blue,
    legacy_names: [],
    names: [
      [:blue],
      [:strong_blue],
      :primary_blue,
      [:star_of_david],
      [:graphical_80_s_sky]
    ]
  },
  %{
    code: 22,
    hex: "005f00",
    rgb: {0, 95, 0},
    hsl: {120.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;22m",
    background: "\e[48;5;22m",
    legacy_names: [:dark_green, :camarone],
    names: [
      :cucumber,
      :duck_hunt,
      :forest_ride,
      :emerald_green,
      :pakistan_green
    ]
  },
  %{
    code: 23,
    hex: "005f5f",
    rgb: {0, 95, 95},
    hsl: {180.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;23m",
    background: "\e[48;5;23m",
    legacy_names: [:blue_stone, :dark_slate_gray],
    names: [
      :mosque,
      :tidal_pool,
      :emerald_stone,
      :sandhill_crane,
      :enamelled_jewel
    ]
  },
  %{
    code: 24,
    hex: "005f87",
    rgb: {0, 95, 135},
    hsl: {197.77777777777777, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;24m",
    background: "\e[48;5;24m",
    legacy_names: [:blue_lagoon, :orient],
    names: [:impulse, :blue_flame, :ink_blotch, :blue_heist, :blue_league]
  },
  %{
    code: 25,
    hex: "005faf",
    rgb: {0, 95, 175},
    hsl: {207.42857142857144, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;25m",
    background: "\e[48;5;25m",
    legacy_names: [:endeavour],
    names: [
      :peptalk,
      :bottled_sea,
      :cobalt_stone,
      :wing_commander,
      :directoire_blue
    ]
  },
  %{
    code: 26,
    hex: "005fd7",
    rgb: {0, 95, 215},
    hsl: {213.4883720930233, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;26m",
    background: "\e[48;5;26m",
    legacy_names: [:science_blue],
    names: [
      :blue_ruin,
      :dead_blue_eyes,
      :pacific_bridge,
      :royal_navy_blue,
      :frosted_blueberries
    ]
  },
  %{
    code: 27,
    hex: "005fff",
    rgb: {0, 95, 255},
    hsl: {217.6470588235294, 1.0, 0.5},
    foreground: "\e[38;5;27m",
    background: "\e[48;5;27m",
    fave_name: :bright_blue,
    legacy_names: [],
    names: [
      :nīlā_blue,
      :bright_blue,
      :blue_ribbon,
      :megaman_helmet,
      :blue_et_une_nuit
    ]
  },
  %{
    code: 28,
    hex: "008700",
    rgb: {0, 135, 0},
    hsl: {120.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;28m",
    background: "\e[48;5;28m",
    fave_name: :clover,
    legacy_names: [:japanese_laurel],
    names: [[:hulk], :clover, [:fine_pine], [:lucky_clover], :maniac_green]
  },
  %{
    code: 29,
    hex: "00875f",
    rgb: {0, 135, 95},
    hsl: {162.22222222222223, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;29m",
    background: "\e[48;5;29m",
    legacy_names: [:deep_sea, :observatory],
    names: [
      :bosphorus,
      :chagall_green,
      :spectral_green,
      :spanish_viridian,
      :absinthe_turquoise
    ]
  },
  %{
    code: 30,
    hex: "008787",
    rgb: {0, 135, 135},
    hsl: {180.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;30m",
    background: "\e[48;5;30m",
    legacy_names: [:dark_cyan],
    names: [
      :navigate,
      :well_blue,
      :green_lapis,
      :green_moblin,
      :milky_aquamarine
    ]
  },
  %{
    code: 31,
    hex: "0087af",
    rgb: {0, 135, 175},
    hsl: {193.7142857142857, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;31m",
    background: "\e[48;5;31m",
    legacy_names: [:cerulean],
    names: [
      :lyrebird,
      :tusche_blue,
      :stomy_shower,
      :corfu_waters,
      :tiny_bubbles
    ]
  },
  %{
    code: 32,
    hex: "0087d7",
    rgb: {0, 135, 215},
    hsl: {202.32558139534885, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;32m",
    background: "\e[48;5;32m",
    legacy_names: [:pacific_blue],
    names: [:blue_cola, :kahu_blue, :calgar_blue, :lvivian_rain, :electron_blue]
  },
  %{
    code: 33,
    hex: "0087ff",
    rgb: {0, 135, 255},
    hsl: {208.23529411764707, 1.0, 0.5},
    foreground: "\e[38;5;33m",
    background: "\e[48;5;33m",
    legacy_names: [:dodger_blue],
    names: [
      :azure,
      :brescian_blue,
      :starfleet_blue,
      :bubble_bobble_p2,
      :too_blue_to_be_true
    ]
  },
  %{
    code: 34,
    hex: "00af00",
    rgb: {0, 175, 0},
    hsl: {120.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;34m",
    background: "\e[48;5;34m",
    legacy_names: [:islamic_green],
    names: [
      :green_glimmer,
      :phosphor_green,
      :waystone_green,
      :aquamentus_green,
      :bubble_bobble_green
    ]
  },
  %{
    code: 35,
    hex: "00af5f",
    rgb: {0, 175, 95},
    hsl: {152.57142857142856, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;35m",
    background: "\e[48;5;35m",
    legacy_names: [:jade],
    names: [:jungle, :go_green!, :greedo_green, :rita_repulsa, :alhambra_green]
  },
  %{
    code: 36,
    hex: "00af87",
    rgb: {0, 175, 135},
    hsl: {166.28571428571428, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;36m",
    background: "\e[48;5;36m",
    legacy_names: [:persian_green],
    names: [
      :arcadia,
      :hobgoblin,
      :moray_eel,
      :simply_green,
      :chromophobia_green
    ]
  },
  %{
    code: 37,
    hex: "00afaf",
    rgb: {0, 175, 175},
    hsl: {180.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;37m",
    background: "\e[48;5;37m",
    legacy_names: [:bondi_blue, :light_sea_green],
    names: [:fiji, :bluebird, :cyan_sky, :jade_orchid, :garish_blue]
  },
  %{
    code: 38,
    hex: "00afd7",
    rgb: {0, 175, 215},
    hsl: {191.1627906976744, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;38m",
    background: "\e[48;5;38m",
    legacy_names: [:iris_blue],
    names: [:maldives, :blue_fire, :blue_atoll, :malibu_blue, :vanadyl_blue]
  },
  %{
    code: 39,
    hex: "00afff",
    rgb: {0, 175, 255},
    hsl: {198.82352941176467, 1.0, 0.5},
    foreground: "\e[38;5;39m",
    background: "\e[48;5;39m",
    legacy_names: [:deep_sky_blue],
    names: [
      :democrat,
      :blue_bolt,
      :krishna_blue,
      :protoss_pylon,
      :hawaii_morning
    ]
  },
  %{
    code: 40,
    hex: "00d700",
    rgb: {0, 215, 0},
    hsl: {120.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;40m",
    background: "\e[48;5;40m",
    legacy_names: [],
    names: [
      :tunic_green,
      :greenalicious,
      :demeter_green,
      :vibrant_green,
      :nuclear_throne
    ]
  },
  %{
    code: 41,
    hex: "00d75f",
    rgb: {0, 215, 95},
    hsl: {146.51162790697674, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;41m",
    background: "\e[48;5;41m",
    legacy_names: [],
    names: [:limonana, :alienated, :malachite, :benzol_green, :green_priestess]
  },
  %{
    code: 42,
    hex: "00d787",
    rgb: {0, 215, 135},
    hsl: {157.67441860465118, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;42m",
    background: "\e[48;5;42m",
    legacy_names: [],
    names: [
      :aqua_green,
      [:benzol_green],
      :cōng_lǜ_green,
      :underwater_fern,
      :caribbean_green
    ]
  },
  %{
    code: 43,
    hex: "00d7af",
    rgb: {0, 215, 175},
    hsl: {168.8372093023256, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;43m",
    background: "\e[48;5;43m",
    legacy_names: [],
    names: [
      :mint_leaf,
      :lifeless_green,
      :pristine_oceanic,
      :malted_mint_madness,
      :channel_marker_green
    ]
  },
  %{
    code: 44,
    hex: "00d7d7",
    rgb: {0, 215, 215},
    hsl: {180.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;44m",
    background: "\e[48;5;44m",
    legacy_names: [:dark_turquoise],
    names: [
      :jade_glass,
      :mint_morning,
      :aztec_turquoise,
      :tilla_kari_mosque,
      :first_timer_green
    ]
  },
  %{
    code: 45,
    hex: "00d7ff",
    rgb: {0, 215, 255},
    hsl: {189.41176470588235, 1.0, 0.5},
    foreground: "\e[38;5;45m",
    background: "\e[48;5;45m",
    legacy_names: [],
    names: [
      :neon_blue,
      :vivid_sky_blue,
      :whimsical_blue,
      :bright_sky_blue,
      :tropical_turquoise
    ]
  },
  %{
    code: 46,
    hex: "00ff00",
    rgb: {0, 255, 0},
    hsl: {120.0, 1.0, 0.5},
    foreground: "\e[38;5;46m",
    background: "\e[48;5;46m",
    fave_name: :ega_green,
    legacy_names: [],
    names: [[:green], [:spring], :ega_green, [:venom_dart], [:electric_pickle]]
  },
  %{
    code: 47,
    hex: "00ff5f",
    rgb: {0, 255, 95},
    hsl: {142.35294117647058, 1.0, 0.5},
    foreground: "\e[38;5;47m",
    background: "\e[48;5;47m",
    legacy_names: [],
    names: [
      :spring_green,
      [:guppie_green],
      :cathode_green,
      :booger_buster,
      :mike_wazowski_green
    ]
  },
  %{
    code: 48,
    hex: "00ff87",
    rgb: {0, 255, 135},
    hsl: {151.76470588235293, 1.0, 0.5},
    foreground: "\e[38;5;48m",
    background: "\e[48;5;48m",
    legacy_names: [],
    names: [
      :guppie_green,
      [:spring_green],
      [:booger_buster],
      :turquoise_green,
      :ahaetulla_prasina
    ]
  },
  %{
    code: 49,
    hex: "00ffaf",
    rgb: {0, 255, 175},
    hsl: {161.1764705882353, 1.0, 0.5},
    foreground: "\e[38;5;49m",
    background: "\e[48;5;49m",
    legacy_names: [:medium_spring_green],
    names: [
      :enthusiasm,
      :night_pearl,
      :minty_paradise,
      :greenish_turquoise,
      :yíng_guāng_sè_green
    ]
  },
  %{
    code: 50,
    hex: "00ffd7",
    rgb: {0, 255, 215},
    hsl: {170.58823529411765, 1.0, 0.5},
    foreground: "\e[38;5;50m",
    background: "\e[48;5;50m",
    legacy_names: [:bright_turquoise],
    names: [
      :plunge_pool,
      :bright_teal,
      :ice_ice_baby,
      :vibrant_mint,
      :frozen_boubble
    ]
  },
  %{
    code: 51,
    hex: "00ffff",
    rgb: {0, 255, 255},
    hsl: {180.0, 1.0, 0.5},
    foreground: "\e[38;5;51m",
    background: "\e[48;5;51m",
    fave_name: :arctic_water,
    legacy_names: [],
    names: [
      [:aqua],
      :arctic_water,
      [:agressive_aqua],
      [:spanish_sky_blue],
      [:fluorescent_turquoise]
    ]
  },
  %{
    code: 52,
    hex: "5f0000",
    rgb: {95, 0, 0},
    hsl: {0.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;52m",
    background: "\e[48;5;52m",
    legacy_names: [:rosewood],
    names: [
      :red_blood,
      :spikey_red,
      :khorne_red,
      :soooo_bloody,
      :vampire_hunter
    ]
  },
  %{
    code: 53,
    hex: "5f005f",
    rgb: {95, 0, 95},
    hsl: {300.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;53m",
    background: "\e[48;5;53m",
    legacy_names: [:tyrian_purple],
    names: [
      :clear_plum,
      :divine_purple,
      :god_of_nights,
      :purple_dreamer,
      :amygdala_purple
    ]
  },
  %{
    code: 54,
    hex: "5f0087",
    rgb: {95, 0, 135},
    hsl: {282.22222222222223, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;54m",
    background: "\e[48;5;54m",
    legacy_names: [:indigo],
    names: [
      :zeus_purple,
      :extraviolet,
      :pigment_indigo,
      :peaceful_purple,
      :sql_injection_purple
    ]
  },
  %{
    code: 55,
    hex: "5f00af",
    rgb: {95, 0, 175},
    hsl: {272.57142857142856, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;55m",
    background: "\e[48;5;55m",
    legacy_names: [],
    names: [
      :purplue,
      :indigo_purple,
      :aubergine_perl,
      :elegant_midnight,
      :indiviolet_sunset
    ]
  },
  %{
    code: 56,
    hex: "5f00d7",
    rgb: {95, 0, 215},
    hsl: {266.51162790697674, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;56m",
    background: "\e[48;5;56m",
    legacy_names: [],
    names: [
      :space_opera,
      :violet_blue,
      :gonzo_violet,
      :trusted_purple,
      :sea_serpent_s_tears
    ]
  },
  %{
    code: 57,
    hex: "5f00ff",
    rgb: {95, 0, 255},
    hsl: {262.3529411764706, 1.0, 0.5},
    foreground: "\e[38;5;57m",
    background: "\e[48;5;57m",
    legacy_names: [:blue_violet],
    names: [
      :bright_indigo,
      :wèi_lán_azure,
      :electric_indigo,
      :aladdin_s_feather,
      :tezcatlipōca_blue
    ]
  },
  %{
    code: 58,
    hex: "5f5f00",
    rgb: {95, 95, 0},
    hsl: {60.0, 1.0, 0.18627450980392157},
    foreground: "\e[38;5;58m",
    background: "\e[48;5;58m",
    legacy_names: [:verdun_green],
    names: [
      :mud_green,
      :green_brown,
      :ayahuasca_vine,
      :serrano_pepper,
      :earthy_khaki_green
    ]
  },
  %{
    code: 59,
    hex: "5f5f5f",
    rgb: {95, 95, 95},
    hsl: {0.0, 0.0, 0.37254901960784315},
    foreground: "\e[38;5;59m",
    background: "\e[48;5;59m",
    legacy_names: [:dim_gray],
    names: [:iron, :hematite, :shades_on, :rhine_castle, :charcoal_smudge]
  },
  %{
    code: 60,
    hex: "5f5f87",
    rgb: {95, 95, 135},
    hsl: {240.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;60m",
    background: "\e[48;5;60m",
    legacy_names: [:kimberly],
    names: [
      :idol,
      :champion_blue,
      :purple_balloon,
      :pharaoh_purple,
      :majestic_purple
    ]
  },
  %{
    code: 61,
    hex: "5f5faf",
    rgb: {95, 95, 175},
    hsl: {240.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;61m",
    background: "\e[48;5;61m",
    legacy_names: [:rich_blue],
    names: [
      :blue_iris,
      :bellflower,
      :evening_lagoon,
      :blue_marguerite,
      :yuè_guāng_lán_moonlight
    ]
  },
  %{
    code: 62,
    hex: "5f5fd7",
    rgb: {95, 95, 215},
    hsl: {240.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;62m",
    background: "\e[48;5;62m",
    legacy_names: [:slate_blue],
    names: [
      :ameixa,
      :thick_blue,
      :exodus_fruit,
      :majorelle_blue,
      :dark_periwinkle
    ]
  },
  %{
    code: 63,
    hex: "5f5fff",
    rgb: {95, 95, 255},
    hsl: {240.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;63m",
    background: "\e[48;5;63m",
    legacy_names: [:royal_blue],
    names: [
      :blue_genie,
      :blue_hepatica,
      :flickering_sea,
      :shady_neon_blue,
      :blue_heath_butterfly
    ]
  },
  %{
    code: 64,
    hex: "5f8700",
    rgb: {95, 135, 0},
    hsl: {77.77777777777777, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;64m",
    background: "\e[48;5;64m",
    legacy_names: [:limeade],
    names: [
      :avocado,
      :olive_green,
      :topiary_green,
      :pistachio_flour,
      :pesto_alla_genovese
    ]
  },
  %{
    code: 65,
    hex: "5f875f",
    rgb: {95, 135, 95},
    hsl: {120.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;65m",
    background: "\e[48;5;65m",
    legacy_names: [],
    names: [
      :hippie_green,
      :tuscan_herbs,
      :clouded_pine,
      :soylent_green,
      :spring_garden
    ]
  },
  %{
    code: 66,
    hex: "5f8787",
    rgb: {95, 135, 135},
    hsl: {180.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;66m",
    background: "\e[48;5;66m",
    legacy_names: [:hoki],
    names: [:arctic, :steel_teal, :pond_sedge, :cretan_green, :tasmanian_sea]
  },
  %{
    code: 67,
    hex: "5f87af",
    rgb: {95, 135, 175},
    hsl: {210.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;67m",
    background: "\e[48;5;67m",
    legacy_names: [:steel_blue, :air_force_blue],
    names: [
      :sand_shark,
      :lichen_blue,
      :pacific_coast,
      :shrinking_violet,
      [:perfect_periwinkle]
    ]
  },
  %{
    code: 68,
    hex: "5f87d7",
    rgb: {95, 135, 215},
    hsl: {219.99999999999997, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;68m",
    background: "\e[48;5;68m",
    legacy_names: [:picton_blue],
    names: [:livid, :marina, :blue_jay, :berlin_blue, :little_boy_blue]
  },
  %{
    code: 69,
    hex: "5f87ff",
    rgb: {95, 135, 255},
    hsl: {225.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;69m",
    background: "\e[48;5;69m",
    fave_name: :deep_denim,
    legacy_names: [:cornflower_blue, :light_slate_blue],
    names: [
      :c64_ntsc,
      :deep_denim,
      :skinny_jeans,
      :flickery_c64,
      :punch_out_glove
    ]
  },
  %{
    code: 70,
    hex: "5faf00",
    rgb: {95, 175, 0},
    hsl: {87.42857142857144, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;70m",
    background: "\e[48;5;70m",
    legacy_names: [],
    names: [
      :yoshi,
      :leaf_green,
      :kermit_green,
      :emerald_glitter,
      :appetizing_asparagus
    ]
  },
  %{
    code: 71,
    hex: "5faf5f",
    rgb: {95, 175, 95},
    hsl: {120.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;71m",
    background: "\e[48;5;71m",
    legacy_names: [:fern],
    names: [
      :endo,
      :boring_green,
      :techno_green,
      :chlorella_green,
      :exploration_green
    ]
  },
  %{
    code: 72,
    hex: "5faf87",
    rgb: {95, 175, 135},
    hsl: {150.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;72m",
    background: "\e[48;5;72m",
    legacy_names: [:cadet_blue, :keppel],
    names: [
      :sea_grass,
      :jade_cream,
      :crazy_eyes,
      :verdigris_green,
      :green_tourmaline
    ]
  },
  %{
    code: 73,
    hex: "5fafaf",
    rgb: {95, 175, 175},
    hsl: {180.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;73m",
    background: "\e[48;5;73m",
    legacy_names: [],
    names: [:aquarelle, :timid_sea, :experience, :artesian_well, :fountain_blue]
  },
  %{
    code: 74,
    hex: "5fafd7",
    rgb: {95, 175, 215},
    hsl: {200.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;74m",
    background: "\e[48;5;74m",
    legacy_names: [:shakespeare],
    names: [
      :flyway,
      :disembark,
      :riviera_blue,
      :crystal_seas,
      :shimmering_brook
    ]
  },
  %{
    code: 75,
    hex: "5fafff",
    rgb: {95, 175, 255},
    hsl: {210.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;75m",
    background: "\e[48;5;75m",
    fave_name: :blue_jeans,
    legacy_names: [:maya_blue],
    names: [:âbi_blue, :joust_blue, :blue_jeans, :tiān_lán_sky, :hello_summer]
  },
  %{
    code: 76,
    hex: "5fd700",
    rgb: {95, 215, 0},
    hsl: {93.48837209302326, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;76m",
    background: "\e[48;5;76m",
    legacy_names: [],
    names: [
      :tropical_funk,
      :corrosive_green,
      :blinking_terminal,
      :radioactive_lilypad,
      :composite_artefact_green
    ]
  },
  %{
    code: 77,
    hex: "5fd75f",
    rgb: {95, 215, 95},
    hsl: {120.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;77m",
    background: "\e[48;5;77m",
    legacy_names: [],
    names: [
      :loud_green,
      :fresh_green,
      :lightish_green,
      :scorpion_green,
      :koopa_green_shell
    ]
  },
  %{
    code: 78,
    hex: "5fd787",
    rgb: {95, 215, 135},
    hsl: {140.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;78m",
    background: "\e[48;5;78m",
    legacy_names: [:pastel_green],
    names: [
      :snow_pea,
      :vegetation,
      :spring_bouquet,
      :van_gogh_green,
      :grotesque_green
    ]
  },
  %{
    code: 79,
    hex: "5fd7af",
    rgb: {95, 215, 175},
    hsl: {160.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;79m",
    background: "\e[48;5;79m",
    legacy_names: [],
    names: [
      :sweet_garden,
      :tropical_tide,
      :aquarium_blue,
      :jamaican_jade,
      :medium_aquamarine
    ]
  },
  %{
    code: 80,
    hex: "5fd7d7",
    rgb: {95, 215, 215},
    hsl: {180.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;80m",
    background: "\e[48;5;80m",
    legacy_names: [:medium_turquoise],
    names: [
      :jazzy_jade,
      :hammam_blue,
      :pluviophile,
      :watercourse,
      :blue_radiance
    ]
  },
  %{
    code: 81,
    hex: "5fd7ff",
    rgb: {95, 215, 255},
    hsl: {195.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;81m",
    background: "\e[48;5;81m",
    legacy_names: [:malibu],
    names: [
      :skyan,
      :athena_blue,
      :heisenberg_blue,
      :ionized_air_glow,
      :electric_lemonade
    ]
  },
  %{
    code: 82,
    hex: "5fff00",
    rgb: {95, 255, 0},
    hsl: {97.6470588235294, 1.0, 0.5},
    foreground: "\e[38;5;82m",
    background: "\e[48;5;82m",
    legacy_names: [],
    names: [
      :hyper_green,
      :bright_green,
      :fertility_green,
      :sparkling_green,
      :bright_lime_green
    ]
  },
  %{
    code: 83,
    hex: "5fff5f",
    rgb: {95, 255, 95},
    hsl: {120.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;83m",
    background: "\e[48;5;83m",
    legacy_names: [],
    names: [
      :biopunk,
      :screamin_green,
      :green_katamari,
      :goblin_warboss,
      :puyo_blob_green
    ]
  },
  %{
    code: 84,
    hex: "5fff87",
    rgb: {95, 255, 135},
    hsl: {135.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;84m",
    background: "\e[48;5;84m",
    legacy_names: [],
    names: [
      :flora,
      [:light_green],
      :goblin_green,
      :thallium_flame,
      [:grotesque_green]
    ]
  },
  %{
    code: 85,
    hex: "5fffaf",
    rgb: {95, 255, 175},
    hsl: {150.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;85m",
    background: "\e[48;5;85m",
    legacy_names: [],
    names: [
      :sea_green,
      :venice_green,
      :hanuman_green,
      :illicit_green,
      :ineffable_green
    ]
  },
  %{
    code: 86,
    hex: "5fffd7",
    rgb: {95, 255, 215},
    hsl: {165.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;86m",
    background: "\e[48;5;86m",
    legacy_names: [],
    names: [:icy_life, :rare_wind, :move_mint, :spindrift, :near_moon]
  },
  %{
    code: 87,
    hex: "5fffff",
    rgb: {95, 255, 255},
    hsl: {180.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;87m",
    background: "\e[48;5;87m",
    legacy_names: [:baby_blue],
    names: [
      :cga_blue,
      :electric_sheep,
      :moonglade_water,
      :frozen_turquoise,
      :aggressive_baby_blue
    ]
  },
  %{
    code: 88,
    hex: "870000",
    rgb: {135, 0, 0},
    hsl: {0.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;88m",
    background: "\e[48;5;88m",
    fave_name: :scab_red,
    legacy_names: [],
    names: [
      [:dark_red],
      :scab_red,
      :glass_bull,
      [:chanticleer],
      [:sacrifice_altar]
    ]
  },
  %{
    code: 89,
    hex: "87005f",
    rgb: {135, 0, 95},
    hsl: {317.77777777777777, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;89m",
    background: "\e[48;5;89m",
    legacy_names: [:eggplant],
    names: [
      :grapest,
      :patriarch,
      :cardinal_pink,
      :xereus_purple,
      :strong_cerise
    ]
  },
  %{
    code: 90,
    hex: "870087",
    rgb: {135, 0, 135},
    hsl: {300.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;90m",
    background: "\e[48;5;90m",
    fave_name: :mardi_gras,
    legacy_names: [],
    names: [
      [:purple],
      :mardi_gras,
      [:aunt_violet],
      :dark_magenta,
      [:philippine_violet]
    ]
  },
  %{
    code: 91,
    hex: "8700af",
    rgb: {135, 0, 175},
    hsl: {286.2857142857143, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;91m",
    background: "\e[48;5;91m",
    legacy_names: [],
    names: [
      :shiffurple,
      :violet_poison,
      :french_violet,
      :shade_of_violet,
      :purple_feather_boa
    ]
  },
  %{
    code: 92,
    hex: "8700d7",
    rgb: {135, 0, 215},
    hsl: {277.6744186046512, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;92m",
    background: "\e[48;5;92m",
    legacy_names: [:dark_violet],
    names: [
      :violet_ink,
      [:french_violet],
      [:violet_poison],
      :vibrant_violet,
      :voluptuous_violet
    ]
  },
  %{
    code: 93,
    hex: "8700ff",
    rgb: {135, 0, 255},
    hsl: {271.7647058823529, 1.0, 0.5},
    foreground: "\e[38;5;93m",
    background: "\e[48;5;93m",
    legacy_names: [:electric_violet],
    names: [
      :purple_climax,
      :poison_purple,
      :violent_violet,
      :amethyst_ganzstar,
      [:star_platinum_purple]
    ]
  },
  %{
    code: 94,
    hex: "875f00",
    rgb: {135, 95, 0},
    hsl: {42.22222222222222, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;94m",
    background: "\e[48;5;94m",
    legacy_names: [:brown],
    names: [
      :rat_brown,
      :alligator,
      :hè_sè_brown,
      :ground_earth,
      :soil_of_avagddu
    ]
  },
  %{
    code: 95,
    hex: "875f5f",
    rgb: {135, 95, 95},
    hsl: {0.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;95m",
    background: "\e[48;5;95m",
    legacy_names: [:light_wood],
    names: [
      :tarsier,
      :aged_beech,
      :rabbit_paws,
      :rose_garland,
      :forbidden_thrill
    ]
  },
  %{
    code: 96,
    hex: "875f87",
    rgb: {135, 95, 135},
    hsl: {300.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;96m",
    background: "\e[48;5;96m",
    legacy_names: [:trendy_pink],
    names: [
      :candy_violet,
      :dusty_purple,
      :crushed_grape,
      :orchid_orchestra,
      :ancient_murasaki_purple
    ]
  },
  %{
    code: 97,
    hex: "875faf",
    rgb: {135, 95, 175},
    hsl: {270.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;97m",
    background: "\e[48;5;97m",
    legacy_names: [],
    names: [
      :knight_elf,
      :chive_blossom,
      :lusty_lavender,
      :lavish_spending,
      :genestealer_purple
    ]
  },
  %{
    code: 98,
    hex: "875fd7",
    rgb: {135, 95, 215},
    hsl: {260.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;98m",
    background: "\e[48;5;98m",
    legacy_names: [],
    names: [
      :amethyst,
      :matt_purple,
      :gloomy_purple,
      :iridescent_purple,
      :legendary_lavender
    ]
  },
  %{
    code: 99,
    hex: "875fff",
    rgb: {135, 95, 255},
    hsl: {255.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;99m",
    background: "\e[48;5;99m",
    legacy_names: [],
    names: [
      :irrigo_purple,
      :purple_anemone,
      :venetian_nights,
      :blackthorn_berry,
      :purple_honeycreeper
    ]
  },
  %{
    code: 100,
    hex: "878700",
    rgb: {135, 135, 0},
    hsl: {60.0, 1.0, 0.2647058823529412},
    foreground: "\e[38;5;100m",
    background: "\e[48;5;100m",
    fave_name: :olive,
    legacy_names: [:olive],
    names: [
      [:heart_gold],
      [:drably_olive],
      :old_asparagus,
      :krypton_green,
      :moscow_papyrus
    ]
  },
  %{
    code: 101,
    hex: "87875f",
    rgb: {135, 135, 95},
    hsl: {60.0, 0.17391304347826086, 0.45098039215686275},
    foreground: "\e[38;5;101m",
    background: "\e[48;5;101m",
    legacy_names: [],
    names: [
      :bandicoot,
      :green_scene,
      :green_savage,
      :spinach_souffle,
      :tilleul_de_noémie
    ]
  },
  %{
    code: 102,
    hex: "878787",
    rgb: {135, 135, 135},
    hsl: {0.0, 0.0, 0.5294117647058824},
    foreground: "\e[38;5;102m",
    background: "\e[48;5;102m",
    legacy_names: [],
    names: [:jumbo, :argent, :mithril, :lunar_base, :looking_glass]
  },
  %{
    code: 103,
    hex: "8787af",
    rgb: {135, 135, 175},
    hsl: {240.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;103m",
    background: "\e[48;5;103m",
    legacy_names: [:ship_cove, :light_slate_grey],
    names: [
      :aster_purple,
      :skysail_blue,
      :non_skid_grey,
      :persian_violet,
      [:papilio_argeotus]
    ]
  },
  %{
    code: 104,
    hex: "8787d7",
    rgb: {135, 135, 215},
    hsl: {240.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;104m",
    background: "\e[48;5;104m",
    legacy_names: [:medium_purple, :portage],
    names: [:adora, :tanzine, :mood_mode, :mystic_iris, :bailey_bells]
  },
  %{
    code: 105,
    hex: "8787ff",
    rgb: {135, 135, 255},
    hsl: {240.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;105m",
    background: "\e[48;5;105m",
    legacy_names: [],
    names: [
      :orchid,
      :periwinkle,
      :periwinkle_blue,
      :blue_party_parrot,
      :lavender_blue_shadow
    ]
  },
  %{
    code: 106,
    hex: "87af00",
    rgb: {135, 175, 0},
    hsl: {73.71428571428572, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;106m",
    background: "\e[48;5;106m",
    legacy_names: [:citrus],
    names: [
      :dark_lime,
      :fresh_lawn,
      :grasping_grass,
      :brilliant_green,
      :seasoned_apple_green
    ]
  },
  %{
    code: 107,
    hex: "87af5f",
    rgb: {135, 175, 95},
    hsl: {90.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;107m",
    background: "\e[48;5;107m",
    legacy_names: [],
    names: [:celuce, :broccoli, :jealousy, :nasturtium_leaf, :chelsea_cucumber]
  },
  %{
    code: 108,
    hex: "87af87",
    rgb: {135, 175, 135},
    hsl: {120.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;108m",
    background: "\e[48;5;108m",
    legacy_names: [:dark_sea_green],
    names: [:peapod, :meadow, :shaded_willow, :chatty_cricket, :mermaid_s_cove]
  },
  %{
    code: 109,
    hex: "87afaf",
    rgb: {135, 175, 175},
    hsl: {180.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;109m",
    background: "\e[48;5;109m",
    legacy_names: [:ziggurat],
    names: [
      :hydrology,
      :bon_voyage,
      :jitterbug_lure,
      :cold_front_green,
      :shallow_water_ground
    ]
  },
  %{
    code: 110,
    hex: "87afd7",
    rgb: {135, 175, 215},
    hsl: {210.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;110m",
    background: "\e[48;5;110m",
    legacy_names: [:seagull],
    names: [:reform, :boy_blue, :blue_bell, :buoyant_blue, :birdie_num_num]
  },
  %{
    code: 111,
    hex: "87afff",
    rgb: {135, 175, 255},
    hsl: {219.99999999999997, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;111m",
    background: "\e[48;5;111m",
    legacy_names: [],
    names: [
      :fly_away,
      :kitten_s_eye,
      :scenic_water,
      :carolina_blue,
      :parakeet_blue
    ]
  },
  %{
    code: 112,
    hex: "87d700",
    rgb: {135, 215, 0},
    hsl: {82.32558139534883, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;112m",
    background: "\e[48;5;112m",
    legacy_names: [:lawn_green],
    names: [
      :overgrown,
      :green_cape,
      :sheen_green,
      :alien_armpit,
      :electric_leaf
    ]
  },
  %{
    code: 113,
    hex: "87d75f",
    rgb: {135, 215, 95},
    hsl: {100.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;113m",
    background: "\e[48;5;113m",
    legacy_names: [],
    names: [
      :vivid_spring,
      :amazon_parrot,
      :bright_lettuce,
      :lilliputian_lime,
      :fairy_tale_green
    ]
  },
  %{
    code: 114,
    hex: "87d787",
    rgb: {135, 215, 135},
    hsl: {120.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;114m",
    background: "\e[48;5;114m",
    legacy_names: [:gossip],
    names: [
      :de_york,
      :greek_garden,
      :feralas_lime,
      :vic_20_green,
      :electric_lettuce
    ]
  },
  %{
    code: 115,
    hex: "87d7af",
    rgb: {135, 215, 175},
    hsl: {150.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;115m",
    background: "\e[48;5;115m",
    legacy_names: [:bermuda],
    names: [
      :marooned,
      :jovial_jade,
      :tropical_trail,
      :pharaoh_s_jade,
      :aquamarine_ocean
    ]
  },
  %{
    code: 116,
    hex: "87d7d7",
    rgb: {135, 215, 215},
    hsl: {180.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;116m",
    background: "\e[48;5;116m",
    legacy_names: [:riptide],
    names: [
      :rainwater,
      :vic_20_sky,
      :island_oasis,
      :vibrant_soft_blue,
      :mountain_lake_blue
    ]
  },
  %{
    code: 117,
    hex: "87d7ff",
    rgb: {135, 215, 255},
    hsl: {200.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;117m",
    background: "\e[48;5;117m",
    legacy_names: [:columbia_blue],
    names: [
      :clear_sky,
      :tranquil_pool,
      :platonic_blue,
      :kul_sharif_blue,
      :drift_on_the_sea
    ]
  },
  %{
    code: 118,
    hex: "87ff00",
    rgb: {135, 255, 0},
    hsl: {88.23529411764707, 1.0, 0.5},
    foreground: "\e[38;5;118m",
    background: "\e[48;5;118m",
    legacy_names: [:chartreuse],
    names: [:radium, :mochito, :bright_lime, :radioactive, :lasting_lime]
  },
  %{
    code: 119,
    hex: "87ff5f",
    rgb: {135, 255, 95},
    hsl: {105.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;119m",
    background: "\e[48;5;119m",
    legacy_names: [],
    names: [
      :stadium_lawn,
      :lighter_green,
      [:amazon_parrot],
      :poisonous_dart,
      :astro_arcade_green
    ]
  },
  %{
    code: 120,
    hex: "87ff87",
    rgb: {135, 255, 135},
    hsl: {120.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;120m",
    background: "\e[48;5;120m",
    fave_name: :mint_green,
    legacy_names: [:mint_green],
    names: [
      [:light_green],
      :easter_green,
      :cobalt_green,
      :radar_blip_green,
      :ulva_lactuca_green
    ]
  },
  %{
    code: 121,
    hex: "87ffaf",
    rgb: {135, 255, 175},
    hsl: {140.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;121m",
    background: "\e[48;5;121m",
    legacy_names: [:pale_green],
    names: [
      :foam_green,
      :mint_bliss,
      :mild_menthol,
      :green_epiphany,
      :esper_s_fungus_green
    ]
  },
  %{
    code: 122,
    hex: "87ffd7",
    rgb: {135, 255, 215},
    hsl: {160.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;122m",
    background: "\e[48;5;122m",
    legacy_names: [],
    names: [
      :roller_derby,
      :calamine_blue,
      :tibetan_plateau,
      :a_state_of_mint,
      :hiroshima_aquamarine
    ]
  },
  %{
    code: 123,
    hex: "87ffff",
    rgb: {135, 255, 255},
    hsl: {180.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;123m",
    background: "\e[48;5;123m",
    legacy_names: [],
    names: [
      :electric_blue,
      :shallow_water,
      :glitter_shower,
      :defense_matrix,
      :photon_projector
    ]
  },
  %{
    code: 124,
    hex: "af0000",
    rgb: {175, 0, 0},
    hsl: {0.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;124m",
    background: "\e[48;5;124m",
    legacy_names: [:free_speech_red],
    names: [:red_door, :heartbeat, :artful_red, :red_pentacle, :velvet_volcano]
  },
  %{
    code: 125,
    hex: "af005f",
    rgb: {175, 0, 95},
    hsl: {327.42857142857144, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;125m",
    background: "\e[48;5;125m",
    legacy_names: [:flirt],
    names: [
      :violet_red,
      :shy_guy_red,
      :aztec_warrior,
      :velvet_cupcake,
      :banafsaji_purple
    ]
  },
  %{
    code: 126,
    hex: "af0087",
    rgb: {175, 0, 135},
    hsl: {313.7142857142857, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;126m",
    background: "\e[48;5;126m",
    legacy_names: [:medium_violet_red],
    names: [
      :katy_berry,
      :vibrant_velvet,
      :blissful_berry,
      :king_s_plum_pie,
      :eye_popping_cherry
    ]
  },
  %{
    code: 127,
    hex: "af00af",
    rgb: {175, 0, 175},
    hsl: {300.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;127m",
    background: "\e[48;5;127m",
    legacy_names: [:deep_magenta],
    names: [
      :kinky_koala,
      :purple_potion,
      [:purple_pirate],
      :energic_eggplant,
      :heliotrope_magenta
    ]
  },
  %{
    code: 128,
    hex: "af00d7",
    rgb: {175, 0, 215},
    hsl: {288.83720930232556, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;128m",
    background: "\e[48;5;128m",
    legacy_names: [],
    names: [
      :foxy_fuchsia,
      :vibrant_purple,
      :vivid_mulberry,
      :ferocious_fuchsia,
      :capricious_purple
    ]
  },
  %{
    code: 129,
    hex: "af00ff",
    rgb: {175, 0, 255},
    hsl: {281.1764705882353, 1.0, 0.5},
    foreground: "\e[38;5;129m",
    background: "\e[48;5;129m",
    legacy_names: [:electric_purple],
    names: [
      :bright_violet,
      :digital_violets,
      :spectacular_purple,
      [:the_grape_war_of_97_],
      :poison_purple_paradise
    ]
  },
  %{
    code: 130,
    hex: "af5f00",
    rgb: {175, 95, 0},
    hsl: {32.57142857142857, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;130m",
    background: "\e[48;5;130m",
    legacy_names: [:rose_of_sharon],
    names: [:umber, :ginger, :orange_brown, :butter_fudge, :orangish_brown]
  },
  %{
    code: 131,
    hex: "af5f5f",
    rgb: {175, 95, 95},
    hsl: {0.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;131m",
    background: "\e[48;5;131m",
    legacy_names: [:coral_tree],
    names: [
      :sienna_red,
      :spiced_tea,
      :poppy_prose,
      :italian_villa,
      :cinnamon_candle
    ]
  },
  %{
    code: 132,
    hex: "af5f87",
    rgb: {175, 95, 135},
    hsl: {330.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;132m",
    background: "\e[48;5;132m",
    legacy_names: [:tapestry],
    names: [
      :cure_all,
      :dahlia_mauve,
      :guppy_violet,
      :meadow_mauve,
      :wild_mulberry
    ]
  },
  %{
    code: 133,
    hex: "af5faf",
    rgb: {175, 95, 175},
    hsl: {300.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;133m",
    background: "\e[48;5;133m",
    legacy_names: [],
    names: [
      :mazzy_star,
      :iris_orchid,
      :pearly_purple,
      :royalty_loyalty,
      :orchid_dottyback
    ]
  },
  %{
    code: 134,
    hex: "af5fd7",
    rgb: {175, 95, 215},
    hsl: {280.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;134m",
    background: "\e[48;5;134m",
    legacy_names: [],
    names: [
      :rich_lilac,
      :medium_orchid,
      :rich_lavender,
      :ripe_lavander,
      :teldrassil_purple
    ]
  },
  %{
    code: 135,
    hex: "af5fff",
    rgb: {175, 95, 255},
    hsl: {270.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;135m",
    background: "\e[48;5;135m",
    legacy_names: [],
    names: [
      :vega_violet,
      :queer_purple,
      :lighter_purple,
      :purple_hedonist,
      :light_shōtoku_purple
    ]
  },
  %{
    code: 136,
    hex: "af8700",
    rgb: {175, 135, 0},
    hsl: {46.28571428571429, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;136m",
    background: "\e[48;5;136m",
    legacy_names: [:dark_goldenrod],
    names: [
      :bark_sawdust,
      :chestnut_gold,
      :mustard_brown,
      :cobra_leather,
      :strong_mustard
    ]
  },
  %{
    code: 137,
    hex: "af875f",
    rgb: {175, 135, 95},
    hsl: {30.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;137m",
    background: "\e[48;5;137m",
    legacy_names: [:teak],
    names: [
      :clay_ochre,
      :roman_coin,
      :caramel_kiss,
      :sacred_ground,
      :light_oak_brown
    ]
  },
  %{
    code: 138,
    hex: "af8787",
    rgb: {175, 135, 135},
    hsl: {0.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;138m",
    background: "\e[48;5;138m",
    legacy_names: [:rosy_brown, :thatch],
    names: [:woodrose, :orchid_red, :retro_pink, :warm_comfort, :audrey_s_blush]
  },
  %{
    code: 139,
    hex: "af87af",
    rgb: {175, 135, 175},
    hsl: {300.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;139m",
    background: "\e[48;5;139m",
    legacy_names: [:london_hue],
    names: [
      :voila!,
      :stage_mauve,
      :dusty_lavender,
      :african_violet,
      :fashionably_plum
    ]
  },
  %{
    code: 140,
    hex: "af87d7",
    rgb: {175, 135, 215},
    hsl: {270.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;140m",
    background: "\e[48;5;140m",
    legacy_names: [:wisteria],
    names: [
      :lenurple,
      :pale_purple,
      :fleur_de_lis,
      :middy_s_purple,
      :lavender_blossom
    ]
  },
  %{
    code: 141,
    hex: "af87ff",
    rgb: {175, 135, 255},
    hsl: {260.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;141m",
    background: "\e[48;5;141m",
    legacy_names: [],
    names: [
      :liliac,
      :lilac_geode,
      [:queer_purple],
      :illicit_purple,
      :purple_illusionist
    ]
  },
  %{
    code: 142,
    hex: "afaf00",
    rgb: {175, 175, 0},
    hsl: {60.0, 1.0, 0.3431372549019608},
    foreground: "\e[38;5;142m",
    background: "\e[48;5;142m",
    legacy_names: [:buddha_gold],
    names: [
      :yew,
      :dark_citron,
      :mustard_green,
      :honey_and_thyme,
      :sulphine_yellow
    ]
  },
  %{
    code: 143,
    hex: "afaf5f",
    rgb: {175, 175, 95},
    hsl: {60.0, 0.3333333333333333, 0.5294117647058824},
    foreground: "\e[38;5;143m",
    background: "\e[48;5;143m",
    legacy_names: [:dark_khaki],
    names: [:palm, :green_me, :hemp_tea, :palm_frond, :april_green]
  },
  %{
    code: 144,
    hex: "afaf87",
    rgb: {175, 175, 135},
    hsl: {60.0, 0.2, 0.607843137254902},
    foreground: "\e[38;5;144m",
    background: "\e[48;5;144m",
    legacy_names: [:neutral_green],
    names: [:daddy_o, :lively_ivy, :wall_green, :new_bamboo, :underhive_ash]
  },
  %{
    code: 145,
    hex: "afafaf",
    rgb: {175, 175, 175},
    hsl: {0.0, 0.0, 0.6862745098039216},
    foreground: "\e[38;5;145m",
    background: "\e[48;5;145m",
    legacy_names: [:dark_gray],
    names: [:bombay, :tin_foil, :smoke_screen, :aluminum_sky, :industrial_age]
  },
  %{
    code: 146,
    hex: "afafd7",
    rgb: {175, 175, 215},
    hsl: {240.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;146m",
    background: "\e[48;5;146m",
    legacy_names: [:moon_raker],
    names: [
      :high_style,
      :pixie_violet,
      :lavender_wash,
      :freesia_purple,
      :delicate_lilac
    ]
  },
  %{
    code: 147,
    hex: "afafff",
    rgb: {175, 175, 255},
    hsl: {240.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;147m",
    background: "\e[48;5;147m",
    legacy_names: [:light_steel_blue],
    names: [
      :shy_moment,
      :dried_lilac,
      :purple_illusion,
      :greyish_lavender,
      :winterspring_lilac
    ]
  },
  %{
    code: 148,
    hex: "afd700",
    rgb: {175, 215, 0},
    hsl: {71.16279069767441, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;148m",
    background: "\e[48;5;148m",
    legacy_names: [],
    names: [
      :king_lime,
      :high_grass,
      :slimer_green,
      :vivid_lime_green,
      :immaculate_iguana
    ]
  },
  %{
    code: 149,
    hex: "afd75f",
    rgb: {175, 215, 95},
    hsl: {80.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;149m",
    background: "\e[48;5;149m",
    legacy_names: [:conifer],
    names: [
      :juicy_lime,
      :lime_lizard,
      :citrus_leaf,
      :badass_grass,
      :last_of_lettuce
    ]
  },
  %{
    code: 150,
    hex: "afd787",
    rgb: {175, 215, 135},
    hsl: {90.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;150m",
    background: "\e[48;5;150m",
    legacy_names: [],
    names: [:wasabi, :feijoa, :pastel_lime, :fresh_lettuce, :peas_in_a_pod]
  },
  %{
    code: 151,
    hex: "afd7af",
    rgb: {175, 215, 175},
    hsl: {120.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;151m",
    background: "\e[48;5;151m",
    legacy_names: [:chinook],
    names: [
      :fizz,
      :flower_stem,
      :big_spender,
      :coral_springs,
      :pastel_mint_green
    ]
  },
  %{
    code: 152,
    hex: "afd7d7",
    rgb: {175, 215, 215},
    hsl: {180.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;152m",
    background: "\e[48;5;152m",
    legacy_names: [:scandal],
    names: [
      :wave_top,
      :sugar_pool,
      :rivers_edge,
      :light_imagine,
      :light_continental_waters
    ]
  },
  %{
    code: 153,
    hex: "afd7ff",
    rgb: {175, 215, 255},
    hsl: {210.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;153m",
    background: "\e[48;5;153m",
    legacy_names: [:anakiwa],
    names: [:droplet, :malmö_ff, :night_snow, :ice_cold_stare, :endless_horizon]
  },
  %{
    code: 154,
    hex: "afff00",
    rgb: {175, 255, 0},
    hsl: {78.82352941176471, 1.0, 0.5},
    foreground: "\e[38;5;154m",
    background: "\e[48;5;154m",
    legacy_names: [:green_yellow],
    names: [
      :lime_acid,
      :spring_bud,
      :lemon_green,
      :wolf_lichen,
      :lime_candy_pearl
    ]
  },
  %{
    code: 155,
    hex: "afff5f",
    rgb: {175, 255, 95},
    hsl: {90.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;155m",
    background: "\e[48;5;155m",
    legacy_names: [],
    names: [
      :key_lime,
      :pale_lime_green,
      :stinging_wasabi,
      :irradiated_green,
      :luminescent_lime
    ]
  },
  %{
    code: 156,
    hex: "afff87",
    rgb: {175, 255, 135},
    hsl: {100.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;156m",
    background: "\e[48;5;156m",
    legacy_names: [],
    names: [
      :green_day,
      :pistachio_mousse,
      :pale_light_green,
      :green_incandescence,
      :light_yellowish_green
    ]
  },
  %{
    code: 157,
    hex: "afffaf",
    rgb: {175, 255, 175},
    hsl: {120.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;157m",
    background: "\e[48;5;157m",
    legacy_names: [],
    names: [
      :light_mint,
      :creamy_mint,
      :light_mint_green,
      :light_pastel_green,
      :light_seafoam_green
    ]
  },
  %{
    code: 158,
    hex: "afffd7",
    rgb: {175, 255, 215},
    hsl: {150.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;158m",
    background: "\e[48;5;158m",
    legacy_names: [:aero_blue],
    names: [:icery, :neo_mint, :mintastic, :seafair_green, :pale_turquoise]
  },
  %{
    code: 159,
    hex: "afffff",
    rgb: {175, 255, 255},
    hsl: {180.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;159m",
    background: "\e[48;5;159m",
    legacy_names: [:french_pass],
    names: [
      :celeste,
      :frostbite,
      :winter_meadow,
      :affen_turquoise,
      :italian_sky_blue
    ]
  },
  %{
    code: 160,
    hex: "d70000",
    rgb: {215, 0, 0},
    hsl: {0.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;160m",
    background: "\e[48;5;160m",
    legacy_names: [:guardsman_red],
    names: [
      :hot_fever,
      :rosso_corsa,
      :red_pegasus,
      :red_republic,
      :red_epiphyllum
    ]
  },
  %{
    code: 161,
    hex: "d7005f",
    rgb: {215, 0, 95},
    hsl: {333.48837209302326, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;161m",
    background: "\e[48;5;161m",
    legacy_names: [:razzmatazz],
    names: [:anger, :rowan, :rubine_red, :tête_à_tête, :magna_cum_laude]
  },
  %{
    code: 162,
    hex: "d70087",
    rgb: {215, 0, 135},
    hsl: {322.3255813953488, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;162m",
    background: "\e[48;5;162m",
    legacy_names: [:hollywood_cerise],
    names: [
      :mexican_pink,
      :snappy_violet,
      :benevolent_pink,
      :vampire_love_story,
      [:the_art_of_seduction]
    ]
  },
  %{
    code: 163,
    hex: "d700af",
    rgb: {215, 0, 175},
    hsl: {311.16279069767444, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;163m",
    background: "\e[48;5;163m",
    legacy_names: [],
    names: [
      :purple_pirate,
      :fúchsia_intenso,
      :passionate_pink,
      :explosive_purple,
      :aphroditean_fuchsia
    ]
  },
  %{
    code: 164,
    hex: "d700d7",
    rgb: {215, 0, 215},
    hsl: {300.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;164m",
    background: "\e[48;5;164m",
    legacy_names: [],
    names: [
      :awkward_purple,
      [:fúchsia_intenso],
      [:passionate_pink],
      :screaming_magenta,
      :fungal_hallucinations
    ]
  },
  %{
    code: 165,
    hex: "d700ff",
    rgb: {215, 0, 255},
    hsl: {290.5882352941176, 1.0, 0.5},
    foreground: "\e[38;5;165m",
    background: "\e[48;5;165m",
    legacy_names: [],
    names: [
      :phlox,
      :hot_purple,
      :vivid_orchid,
      :electric_orchid,
      :psychedelic_purple
    ]
  },
  %{
    code: 166,
    hex: "d75f00",
    rgb: {215, 95, 0},
    hsl: {26.511627906976745, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;166m",
    background: "\e[48;5;166m",
    legacy_names: [:tenne, :tenn],
    names: [:tenné, :exuberance, :raging_leaf, :orange_danger, :ancient_bamboo]
  },
  %{
    code: 167,
    hex: "d75f5f",
    rgb: {215, 95, 95},
    hsl: {0.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;167m",
    background: "\e[48;5;167m",
    legacy_names: [:indian_red],
    names: [:roman, :tory_red, :happy_hearts, :salami_slice, :deep_sea_coral]
  },
  %{
    code: 168,
    hex: "d75f87",
    rgb: {215, 95, 135},
    hsl: {340.00000000000006, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;168m",
    background: "\e[48;5;168m",
    legacy_names: [:pale_violet_red],
    names: [:groovy, :surfer_girl, :flirty_rose, :preppy_rose, :blush_d_amour]
  },
  %{
    code: 169,
    hex: "d75faf",
    rgb: {215, 95, 175},
    hsl: {320.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;169m",
    background: "\e[48;5;169m",
    legacy_names: [:hopbush],
    names: [
      :orion,
      :pink_charge,
      :mega_magenta,
      :pú_táo_zǐ_purple,
      :purple_hollyhock
    ]
  },
  %{
    code: 170,
    hex: "d75fd7",
    rgb: {215, 95, 215},
    hsl: {300.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;170m",
    background: "\e[48;5;170m",
    legacy_names: [],
    names: [
      :thick_pink,
      :fuchsia_flash,
      :blueberry_glaze,
      :death_of_a_star,
      :free_speech_magenta
    ]
  },
  %{
    code: 171,
    hex: "d75fff",
    rgb: {215, 95, 255},
    hsl: {285.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;171m",
    background: "\e[48;5;171m",
    legacy_names: [],
    names: [
      :pink_fever,
      :heliotrope,
      :jacaranda_pink,
      :flaming_flamingo,
      :after_party_pink
    ]
  },
  %{
    code: 172,
    hex: "d78700",
    rgb: {215, 135, 0},
    hsl: {37.674418604651166, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;172m",
    background: "\e[48;5;172m",
    legacy_names: [:mango_tango, :chocolate],
    names: [
      :fulvous,
      :fox_tails,
      :orange_pepper,
      :harvest_eve_gold,
      :fleur_de_sel_caramel
    ]
  },
  %{
    code: 173,
    hex: "d7875f",
    rgb: {215, 135, 95},
    hsl: {20.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;173m",
    background: "\e[48;5;173m",
    legacy_names: [:copper],
    names: [
      :copper_tan,
      :harvest_time,
      :bright_sienna,
      :show_business,
      :georgian_leather
    ]
  },
  %{
    code: 174,
    hex: "d78787",
    rgb: {215, 135, 135},
    hsl: {0.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;174m",
    background: "\e[48;5;174m",
    legacy_names: [:my_pink],
    names: [
      :mauve_glow,
      :copperfield,
      :rhubarb_pie,
      :finest_blush,
      :peaches_of_immortality
    ]
  },
  %{
    code: 175,
    hex: "d787af",
    rgb: {215, 135, 175},
    hsl: {330.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;175m",
    background: "\e[48;5;175m",
    legacy_names: [:kobi],
    names: [
      :middle_purple,
      :moonlit_mauve,
      :vivacious_pink,
      :springtime_bloom,
      :high_maintenance
    ]
  },
  %{
    code: 176,
    hex: "d787d7",
    rgb: {215, 135, 215},
    hsl: {300.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;176m",
    background: "\e[48;5;176m",
    legacy_names: [:plum],
    names: [
      :purception,
      :hibiscus_pop,
      :lavender_pink,
      :blush_essence,
      :lavender_perceptions
    ]
  },
  %{
    code: 177,
    hex: "d787ff",
    rgb: {215, 135, 255},
    hsl: {280.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;177m",
    background: "\e[48;5;177m",
    legacy_names: [:violet],
    names: [
      :crash_pink,
      :pink_fetish,
      :lavender_tea,
      :bright_lilac,
      :grass_pink_orchid
    ]
  },
  %{
    code: 178,
    hex: "d7af00",
    rgb: {215, 175, 0},
    hsl: {48.837209302325576, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;178m",
    background: "\e[48;5;178m",
    legacy_names: [:goldenrod, :golden_poppy, :corn],
    names: [
      :mustard,
      :chinese_gold,
      :burnt_yellow,
      :palomino_gold,
      :deadly_yellow
    ]
  },
  %{
    code: 179,
    hex: "d7af5f",
    rgb: {215, 175, 95},
    hsl: {40.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;179m",
    background: "\e[48;5;179m",
    legacy_names: [],
    names: [
      :equator,
      :sell_gold,
      :french_pale_gold,
      :butterscotch_bliss,
      :stranglethorn_ochre
    ]
  },
  %{
    code: 180,
    hex: "d7af87",
    rgb: {215, 175, 135},
    hsl: {30.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;180m",
    background: "\e[48;5;180m",
    legacy_names: [:tan],
    names: [:calico, :porcini, :santa_fe_tan, :caramel_cloud, :buttery_leather]
  },
  %{
    code: 181,
    hex: "d7afaf",
    rgb: {215, 175, 175},
    hsl: {0.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;181m",
    background: "\e[48;5;181m",
    legacy_names: [:pink_flare],
    names: [
      :mary_rose,
      :victoriana,
      :ballet_rose,
      :radiant_rouge,
      :pale_persimmon
    ]
  },
  %{
    code: 182,
    hex: "d7afd7",
    rgb: {215, 175, 215},
    hsl: {300.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;182m",
    background: "\e[48;5;182m",
    fave_name: :lilac_haze,
    legacy_names: [:french_lilac],
    names: [:bff, :lilac_haze, :sea_lavender, :confectionary, :whisper_of_plum]
  },
  %{
    code: 183,
    hex: "d7afff",
    rgb: {215, 175, 255},
    hsl: {270.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;183m",
    background: "\e[48;5;183m",
    legacy_names: [],
    names: [
      :mauve,
      :light_violet,
      :testosterose,
      :pink_illusion,
      :teasel_dipsacus
    ]
  },
  %{
    code: 184,
    hex: "d7d700",
    rgb: {215, 215, 0},
    hsl: {60.0, 1.0, 0.4215686274509804},
    foreground: "\e[38;5;184m",
    background: "\e[48;5;184m",
    legacy_names: [:school_bus_yellow],
    names: [
      :octarine,
      :golden_gun,
      :march_green,
      :chartreuse_shot,
      :mogwa_cheong_yellow
    ]
  },
  %{
    code: 185,
    hex: "d7d75f",
    rgb: {215, 215, 95},
    hsl: {60.0, 0.6000000000000001, 0.607843137254902},
    foreground: "\e[38;5;185m",
    background: "\e[48;5;185m",
    legacy_names: [:tacha],
    names: [:species, :sequesta, :energized, :banana_chalk, :chinese_green]
  },
  %{
    code: 186,
    hex: "d7d787",
    rgb: {215, 215, 135},
    hsl: {60.0, 0.5000000000000001, 0.6862745098039216},
    foreground: "\e[38;5;186m",
    background: "\e[48;5;186m",
    legacy_names: [:deco],
    names: [:treasury, :lime_ice, :wax_green, :garlic_toast, :golden_delicious]
  },
  %{
    code: 187,
    hex: "d7d7af",
    rgb: {215, 215, 175},
    hsl: {60.0, 0.3333333333333334, 0.7647058823529411},
    foreground: "\e[38;5;187m",
    background: "\e[48;5;187m",
    legacy_names: [:aths_special],
    names: [
      :dull_sage,
      :green_mesh,
      :morning_moor,
      :mǐ_bái_beige,
      :kohlrabi_green
    ]
  },
  %{
    code: 188,
    hex: "d7d7d7",
    rgb: {215, 215, 215},
    hsl: {0.0, 0.0, 0.8431372549019608},
    foreground: "\e[38;5;188m",
    background: "\e[48;5;188m",
    legacy_names: [:light_grey, :light_gray],
    names: [:tundra, :cape_hope, :windchill, :silver_medal, :desired_dawn]
  },
  %{
    code: 189,
    hex: "d7d7ff",
    rgb: {215, 215, 255},
    hsl: {240.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;189m",
    background: "\e[48;5;189m",
    legacy_names: [:lavender_blue],
    names: [
      :contrail,
      :icy_plains,
      :pale_lavender,
      :transparent_blue,
      :nostalgia_perfume
    ]
  },
  %{
    code: 190,
    hex: "d7ff00",
    rgb: {215, 255, 0},
    hsl: {69.41176470588235, 1.0, 0.5},
    foreground: "\e[38;5;190m",
    background: "\e[48;5;190m",
    legacy_names: [:chartreuse_yellow],
    names: [
      :lime_zest,
      :citron_goby,
      :bitter_lime,
      :neon_yellow,
      :dancing_lady_orchid
    ]
  },
  %{
    code: 191,
    hex: "d7ff5f",
    rgb: {215, 255, 95},
    hsl: {75.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;191m",
    background: "\e[48;5;191m",
    legacy_names: [],
    names: [
      :ultra_moss,
      :pear_spritz,
      :tennis_ball,
      :isotonic_water,
      :green_of_bhabua
    ]
  },
  %{
    code: 192,
    hex: "d7ff87",
    rgb: {215, 255, 135},
    hsl: {80.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;192m",
    background: "\e[48;5;192m",
    legacy_names: [],
    names: [
      :sunny_lime,
      :mystic_green,
      :green_shimmer,
      :honeydew_peel,
      [:green_incandescence]
    ]
  },
  %{
    code: 193,
    hex: "d7ffaf",
    rgb: {215, 255, 175},
    hsl: {90.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;193m",
    background: "\e[48;5;193m",
    legacy_names: [:reef],
    names: [
      :lime_mist,
      :greedy_green,
      :breeze_of_green,
      :distilled_venom,
      :sour_green_cherry
    ]
  },
  %{
    code: 194,
    hex: "d7ffd7",
    rgb: {215, 255, 215},
    hsl: {120.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;194m",
    background: "\e[48;5;194m",
    legacy_names: [:honeydew, :beige],
    names: [
      :mint_zest,
      :aquarelle_mint,
      :frosted_plains,
      :light_carolina,
      :transparent_green
    ]
  },
  %{
    code: 195,
    hex: "d7ffff",
    rgb: {215, 255, 255},
    hsl: {180.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;195m",
    background: "\e[48;5;195m",
    legacy_names: [:oyster_bay],
    names: [
      :ice,
      :cold_canada,
      :salt_mountain,
      :mount_olympus,
      :refreshing_primer
    ]
  },
  %{
    code: 196,
    hex: "ff0000",
    rgb: {255, 0, 0},
    hsl: {0.0, 1.0, 0.5},
    foreground: "\e[38;5;196m",
    background: "\e[48;5;196m",
    fave_name: :fire_engine,
    legacy_names: [],
    names: [
      [:red],
      [:encarnado],
      :fire_engine,
      [:left_on_red],
      [:rainbow_s_outer_rim]
    ]
  },
  %{
    code: 197,
    hex: "ff005f",
    rgb: {255, 0, 95},
    hsl: {337.6470588235294, 1.0, 0.5},
    foreground: "\e[38;5;197m",
    background: "\e[48;5;197m",
    legacy_names: [:rose],
    names: [
      :sorx_red,
      :standby_led,
      :new_york_sunset,
      :sizzling_watermelon,
      :flaming_hot_flamingoes
    ]
  },
  %{
    code: 198,
    hex: "ff0087",
    rgb: {255, 0, 135},
    hsl: {328.2352941176471, 1.0, 0.5},
    foreground: "\e[38;5;198m",
    background: "\e[48;5;198m",
    legacy_names: [:deep_pink],
    names: [:hot_pink, :neon_rose, :flickr_pink, :strong_pink, :fancy_fuchsia]
  },
  %{
    code: 199,
    hex: "ff00af",
    rgb: {255, 0, 175},
    hsl: {318.8235294117647, 1.0, 0.5},
    foreground: "\e[38;5;199m",
    background: "\e[48;5;199m",
    legacy_names: [],
    names: [
      :bright_pink,
      :brutal_pink,
      :shocking_pink,
      :ms_pac_man_kiss,
      :mean_girls_lipstick
    ]
  },
  %{
    code: 200,
    hex: "ff00d7",
    rgb: {255, 0, 215},
    hsl: {309.4117647058824, 1.0, 0.5},
    foreground: "\e[38;5;200m",
    background: "\e[48;5;200m",
    legacy_names: [],
    names: [
      :vice_city,
      :hot_magenta,
      :fuchsia_flame,
      :bright_magenta,
      :mademoiselle_pink
    ]
  },
  %{
    code: 201,
    hex: "ff00ff",
    rgb: {255, 0, 255},
    hsl: {300.0, 1.0, 0.5},
    foreground: "\e[38;5;201m",
    background: "\e[48;5;201m",
    fave_name: :fuchsia,
    legacy_names: [:fuchsia],
    names: [
      [:magenta],
      [:brusque_pink],
      [:fresh_neon_pink],
      [:rainbow_s_inner_rim],
      [:sixteen_million_pink]
    ]
  },
  %{
    code: 202,
    hex: "ff5f00",
    rgb: {255, 95, 0},
    hsl: {22.352941176470587, 1.0, 0.5},
    foreground: "\e[38;5;202m",
    background: "\e[48;5;202m",
    legacy_names: [:orange_red],
    names: [
      :molten_core,
      :vivid_orange,
      :safety_orange,
      :maximum_orange,
      :willpower_orange
    ]
  },
  %{
    code: 203,
    hex: "ff5f5f",
    rgb: {255, 95, 95},
    hsl: {0.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;203m",
    background: "\e[48;5;203m",
    legacy_names: [:bittersweet],
    names: [:pompelmo, :fusion_red, :pastel_red, :grapefruit, :pineapple_salmon]
  },
  %{
    code: 204,
    hex: "ff5f87",
    rgb: {255, 95, 135},
    hsl: {345.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;204m",
    background: "\e[48;5;204m",
    legacy_names: [:wild_watermelon],
    names: [
      :warm_pink,
      :ultra_red,
      :rosy_pink,
      :brink_pink,
      :stellar_strawberry
    ]
  },
  %{
    code: 205,
    hex: "ff5faf",
    rgb: {255, 95, 175},
    hsl: {330.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;205m",
    background: "\e[48;5;205m",
    fave_name: :pink_as_hell,
    legacy_names: [],
    names: [
      :pink_katydid,
      :pink_as_hell,
      :girls_night_out,
      :hot_pink_fusion,
      :yíng_guāng_sè_pink
    ]
  },
  %{
    code: 206,
    hex: "ff5fd7",
    rgb: {255, 95, 215},
    hsl: {315.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;206m",
    background: "\e[48;5;206m",
    legacy_names: [:neon_pink],
    names: [
      :rose_pink,
      :candy_pink,
      :illicit_pink,
      :purple_pizzazz,
      :drunken_flamingo
    ]
  },
  %{
    code: 207,
    hex: "ff5fff",
    rgb: {255, 95, 255},
    hsl: {300.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;207m",
    background: "\e[48;5;207m",
    legacy_names: [],
    names: [
      :violet_pink,
      :surati_pink,
      :pink_flamingo,
      :ultimate_pink,
      :magenta_stream
    ]
  },
  %{
    code: 208,
    hex: "ff8700",
    rgb: {255, 135, 0},
    hsl: {31.764705882352942, 1.0, 0.5},
    foreground: "\e[38;5;208m",
    background: "\e[48;5;208m",
    legacy_names: [:dark_orange],
    names: [
      :sun_crete,
      :orange_juice,
      :the_new_black,
      :mandarin_jelly,
      :american_orange
    ]
  },
  %{
    code: 209,
    hex: "ff875f",
    rgb: {255, 135, 95},
    hsl: {15.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;209m",
    background: "\e[48;5;209m",
    legacy_names: [:coral],
    names: [:pink_fire, :nectarine, :after_burn, :protein_high, :mango_orange]
  },
  %{
    code: 210,
    hex: "ff8787",
    rgb: {255, 135, 135},
    hsl: {0.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;210m",
    background: "\e[48;5;210m",
    legacy_names: [:light_coral, :mona_lisa],
    names: [:tulip, :red_mull, :prime_pink, :coral_trails, :camaron_pink]
  },
  %{
    code: 211,
    hex: "ff87af",
    rgb: {255, 135, 175},
    hsl: {340.00000000000006, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;211m",
    background: "\e[48;5;211m",
    legacy_names: [],
    names: [
      :pinky,
      :rock_n_rose,
      :tickle_me_pink,
      :informative_pink,
      :strawberry_dreams
    ]
  },
  %{
    code: 212,
    hex: "ff87d7",
    rgb: {255, 135, 215},
    hsl: {320.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;212m",
    background: "\e[48;5;212m",
    legacy_names: [],
    names: [
      :pout_pink,
      :pink_delight,
      :shimmering_love,
      :angel_face_rose,
      :princess_perfume
    ]
  },
  %{
    code: 213,
    hex: "ff87ff",
    rgb: {255, 135, 255},
    hsl: {300.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;213m",
    background: "\e[48;5;213m",
    legacy_names: [:fuchsia_pink],
    names: [
      :bubble_gum,
      :technolust,
      :darling_bud,
      :atomic_pink,
      :hottest_of_pinks
    ]
  },
  %{
    code: 214,
    hex: "ffaf00",
    rgb: {255, 175, 0},
    hsl: {41.17647058823529, 1.0, 0.5},
    foreground: "\e[38;5;214m",
    background: "\e[48;5;214m",
    legacy_names: [:orange],
    names: [
      :frenzy,
      :fresh_squeezed,
      :imperial_yellow,
      :clementine_jelly,
      :yellow_exhilaration
    ]
  },
  %{
    code: 215,
    hex: "ffaf5f",
    rgb: {255, 175, 95},
    hsl: {30.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;215m",
    background: "\e[48;5;215m",
    legacy_names: [:sandy_brown],
    names: [
      :rajah,
      :mango_salsa,
      :dreamy_sunset,
      :burning_flame,
      :vintage_orange
    ]
  },
  %{
    code: 216,
    hex: "ffaf87",
    rgb: {255, 175, 135},
    hsl: {20.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;216m",
    background: "\e[48;5;216m",
    legacy_names: [:hit_pink, :macaroni_and_cheese],
    names: [
      :spice_pink,
      :coral_dusk,
      :super_sepia,
      :coral_correlation,
      [:sunset_over_the_alps]
    ]
  },
  %{
    code: 217,
    hex: "ffafaf",
    rgb: {255, 175, 175},
    hsl: {0.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;217m",
    background: "\e[48;5;217m",
    legacy_names: [:melon],
    names: [
      :peach_bud,
      :apricot_haze,
      :fancy_flamingo,
      :cornflower_lilac,
      :wildflower_bouquet
    ]
  },
  %{
    code: 218,
    hex: "ffafd7",
    rgb: {255, 175, 215},
    hsl: {330.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;218m",
    background: "\e[48;5;218m",
    legacy_names: [:cotton_candy],
    names: [
      :fresh_gum,
      :pink_cattleya,
      :lavender_candy,
      :hot_aquarelle_pink,
      :spaghetti_strap_pink
    ]
  },
  %{
    code: 219,
    hex: "ffafff",
    rgb: {255, 175, 255},
    hsl: {300.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;219m",
    background: "\e[48;5;219m",
    legacy_names: [:lavender_rose],
    names: [
      :jigglypuff,
      :distilled_rose,
      :pink_apotheosis,
      :sweet_slumber_pink,
      [:strawberry_buttercream]
    ]
  },
  %{
    code: 220,
    hex: "ffd700",
    rgb: {255, 215, 0},
    hsl: {50.588235294117645, 1.0, 0.5},
    foreground: "\e[38;5;220m",
    background: "\e[48;5;220m",
    legacy_names: [],
    names: [:gold, :evil_lyn, :school_bus, :soviet_gold, :cyber_yellow]
  },
  %{
    code: 221,
    hex: "ffd75f",
    rgb: {255, 215, 95},
    hsl: {45.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;221m",
    background: "\e[48;5;221m",
    legacy_names: [:dandelion],
    names: [
      :aspen_gold,
      :lemon_twist,
      :naples_yellow,
      :common_dandelion,
      :yellow_stagshorn
    ]
  },
  %{
    code: 222,
    hex: "ffd787",
    rgb: {255, 215, 135},
    hsl: {40.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;222m",
    background: "\e[48;5;222m",
    legacy_names: [:khaki, :salomie],
    names: [
      :oberon,
      :egg_cream,
      :big_bus_yellow,
      :workout_routine,
      :surfboard_yellow
    ]
  },
  %{
    code: 223,
    hex: "ffd7af",
    rgb: {255, 215, 175},
    hsl: {30.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;223m",
    background: "\e[48;5;223m",
    legacy_names: [:moccasin, :navajo_white],
    names: [
      :satin_latour,
      :acini_di_pepe,
      :delicious_melon,
      :venus_deathtrap,
      [:forgotten_sunset]
    ]
  },
  %{
    code: 224,
    hex: "ffd7d7",
    rgb: {255, 215, 215},
    hsl: {0.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;224m",
    background: "\e[48;5;224m",
    legacy_names: [:mysty_rose],
    names: [
      :we_peep,
      :go_go_pink,
      :satin_ribbon,
      :forgotten_pink,
      :cottagecore_sunset
    ]
  },
  %{
    code: 225,
    hex: "ffd7ff",
    rgb: {255, 215, 255},
    hsl: {300.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;225m",
    background: "\e[48;5;225m",
    legacy_names: [:lavender_blush],
    names: [
      :sugarpills,
      :sugar_chic,
      :silky_pink,
      :pink_diamond,
      :strawberry_frost
    ]
  },
  %{
    code: 226,
    hex: "ffff00",
    rgb: {255, 255, 0},
    hsl: {60.0, 1.0, 0.5},
    foreground: "\e[38;5;226m",
    background: "\e[48;5;226m",
    fave_name: :bat_signal,
    legacy_names: [],
    names: [
      [:yellow],
      :bat_signal,
      [:lemon_glacier],
      [:bright_yellow],
      [:yell_for_yellow]
    ]
  },
  %{
    code: 227,
    hex: "ffff5f",
    rgb: {255, 255, 95},
    hsl: {60.0, 1.0, 0.6862745098039216},
    foreground: "\e[38;5;227m",
    background: "\e[48;5;227m",
    legacy_names: [],
    names: [
      :canary,
      :candy_corn,
      :laser_lemon,
      :duckling_fluff,
      :unmellow_yellow
    ]
  },
  %{
    code: 228,
    hex: "ffff87",
    rgb: {255, 255, 135},
    hsl: {60.0, 1.0, 0.7647058823529411},
    foreground: "\e[38;5;228m",
    background: "\e[48;5;228m",
    legacy_names: [:dolly],
    names: [
      :butter,
      :cinque_foil,
      :yippie_yellow,
      :yellowish_tan,
      :aged_plastic_casing
    ]
  },
  %{
    code: 229,
    hex: "ffffaf",
    rgb: {255, 255, 175},
    hsl: {60.0, 1.0, 0.8431372549019608},
    foreground: "\e[38;5;229m",
    background: "\e[48;5;229m",
    legacy_names: [:portafino],
    names: [
      :parchment,
      :vic_20_creme,
      :bollywood_gold,
      :ginger_lemon_tea,
      :creamy_sunshine_pastel
    ]
  },
  %{
    code: 230,
    hex: "ffffd7",
    rgb: {255, 255, 215},
    hsl: {60.0, 1.0, 0.9215686274509804},
    foreground: "\e[38;5;230m",
    background: "\e[48;5;230m",
    legacy_names: [:cream, :cumulus],
    names: [:lit, :sun_city, :matt_white, :pumpkin_seed, :poetic_yellow]
  },
  %{
    code: 231,
    hex: "ffffff",
    rgb: {255, 255, 255},
    hsl: {0.0, 0.0, 1.0},
    foreground: "\e[38;5;231m",
    background: "\e[48;5;231m",
    fave_name: :whitecap_snow,
    legacy_names: [],
    names: [
      [:white],
      [:pale_grey],
      :whitecap_snow,
      [:white_as_heaven],
      [:polar_bear_in_a_blizzard]
    ]
  },
  %{
    code: 232,
    hex: "080808",
    rgb: {8, 8, 8},
    hsl: {0.0, 0.0, 0.03137254901960784},
    foreground: "\e[38;5;232m",
    background: "\e[48;5;232m",
    legacy_names: [:cod_gray],
    names: [
      :black_metal,
      :reversed_grey,
      :accursed_black,
      :badab_black_wash,
      :existential_angst
    ]
  },
  %{
    code: 233,
    hex: "121212",
    rgb: {18, 18, 18},
    hsl: {0.0, 0.0, 0.07058823529411765},
    foreground: "\e[38;5;233m",
    background: "\e[48;5;233m",
    legacy_names: [],
    names: [
      :cursed_black,
      :dark_tone_ink,
      :dreamless_sleep,
      :glimpse_into_space,
      :sticky_black_tarmac
    ]
  },
  %{
    code: 234,
    hex: "1c1c1c",
    rgb: {28, 28, 28},
    hsl: {0.0, 0.0, 0.10980392156862745},
    foreground: "\e[38;5;234m",
    background: "\e[48;5;234m",
    legacy_names: [],
    names: [
      :gluon_grey,
      :eerie_black,
      :siyâh_black,
      :coco_s_black,
      :dynamic_black
    ]
  },
  %{
    code: 235,
    hex: "262626",
    rgb: {38, 38, 38},
    hsl: {0.0, 0.0, 0.14901960784313725},
    foreground: "\e[38;5;235m",
    background: "\e[48;5;235m",
    legacy_names: [:mine_shaft],
    names: [:nero, :dire_wolf, :bokara_grey, :darth_vader, :bitter_liquorice]
  },
  %{
    code: 236,
    hex: "303030",
    rgb: {48, 48, 48},
    hsl: {0.0, 0.0, 0.18823529411764706},
    foreground: "\e[38;5;236m",
    background: "\e[48;5;236m",
    legacy_names: [:night_rider],
    names: [:coated, :tap_shoe, :off_black, :black_cat, :tricorn_black]
  },
  %{
    code: 237,
    hex: "3a3a3a",
    rgb: {58, 58, 58},
    hsl: {0.0, 0.0, 0.22745098039215686},
    foreground: "\e[38;5;237m",
    background: "\e[48;5;237m",
    legacy_names: [:eclipse],
    names: [
      :montana,
      :dead_pixel,
      :boltgun_metal,
      :black_liquorice,
      :limousine_leather
    ]
  },
  %{
    code: 238,
    hex: "444444",
    rgb: {68, 68, 68},
    hsl: {0.0, 0.0, 0.26666666666666666},
    foreground: "\e[38;5;238m",
    background: "\e[48;5;238m",
    legacy_names: [:charcoal, :tundora],
    names: [
      :vulcanized,
      :goshawk_grey,
      :medium_black,
      :greenish_black,
      :machine_gun_metal
    ]
  },
  %{
    code: 239,
    hex: "4e4e4e",
    rgb: {78, 78, 78},
    hsl: {0.0, 0.0, 0.3058823529411765},
    foreground: "\e[38;5;239m",
    background: "\e[48;5;239m",
    legacy_names: [:matterhorn],
    names: [
      :thunder,
      :black_oak,
      :perle_noir,
      :charadon_granite,
      :fiftieth_shade_of_grey
    ]
  },
  %{
    code: 240,
    hex: "585858",
    rgb: {88, 88, 88},
    hsl: {0.0, 0.0, 0.34509803921568627},
    foreground: "\e[38;5;240m",
    background: "\e[48;5;240m",
    legacy_names: [:mortar, :scorpion],
    names: [
      :sumi_ink,
      :charcoal_dust,
      :carbon_dating,
      :shadow_mountain,
      :industrial_grey
    ]
  },
  %{
    code: 241,
    hex: "626262",
    rgb: {98, 98, 98},
    hsl: {0.0, 0.0, 0.3843137254901961},
    foreground: "\e[38;5;241m",
    background: "\e[48;5;241m",
    legacy_names: [:dove_gray],
    names: [
      :digital,
      :kettleman,
      :grizzle_grey,
      :tornado_wind,
      :roycroft_pewter
    ]
  },
  %{
    code: 242,
    hex: "6c6c6c",
    rgb: {108, 108, 108},
    hsl: {0.0, 0.0, 0.4235294117647059},
    foreground: "\e[38;5;242m",
    background: "\e[48;5;242m",
    legacy_names: [],
    names: [:shadows, :dark_ash, :dove_grey, :scapa_flow, :boat_anchor]
  },
  %{
    code: 243,
    hex: "767676",
    rgb: {118, 118, 118},
    hsl: {0.0, 0.0, 0.4627450980392157},
    foreground: "\e[38;5;243m",
    background: "\e[48;5;243m",
    legacy_names: [:empress],
    names: [
      :lucky_grey,
      :steel_wool,
      :riverstone,
      :sonic_silver,
      :iron_mountain
    ]
  },
  %{
    code: 244,
    hex: "808080",
    rgb: {128, 128, 128},
    hsl: {0.0, 0.0, 0.5019607843137255},
    foreground: "\e[38;5;244m",
    background: "\e[48;5;244m",
    fave_name: :gray,
    legacy_names: [:gray],
    names: [
      [:grey],
      [:mt_rushmore],
      [:trolley_grey],
      [:captain_nemo],
      [:pound_sterling]
    ]
  },
  %{
    code: 245,
    hex: "8a8a8a",
    rgb: {138, 138, 138},
    hsl: {0.0, 0.0, 0.5411764705882353},
    foreground: "\e[38;5;245m",
    background: "\e[48;5;245m",
    fave_name: :wild_dove,
    legacy_names: [:suva_grey],
    names: [[:argent], :wild_dove, :heavy_rain, :falcon_grey, :pewter_ring]
  },
  %{
    code: 246,
    hex: "949494",
    rgb: {148, 148, 148},
    hsl: {0.0, 0.0, 0.5803921568627451},
    foreground: "\e[38;5;246m",
    background: "\e[48;5;246m",
    legacy_names: [:dusty_gray],
    names: [:nickel, :shark_fin, :grey_summit, :grey_shingle, :moonlit_orchid]
  },
  %{
    code: 247,
    hex: "9e9e9e",
    rgb: {158, 158, 158},
    hsl: {0.0, 0.0, 0.6196078431372549},
    foreground: "\e[38;5;247m",
    background: "\e[48;5;247m",
    fave_name: :cold_grey,
    legacy_names: [:silver_chalice],
    names: [:waiting, :cold_grey, :smoky_tone, :hugh_s_hue, :mortar_grey]
  },
  %{
    code: 248,
    hex: "a8a8a8",
    rgb: {168, 168, 168},
    hsl: {0.0, 0.0, 0.6588235294117647},
    foreground: "\e[38;5;248m",
    background: "\e[48;5;248m",
    legacy_names: [],
    names: [
      :nosferatu,
      :uniform_grey,
      :moon_landing,
      :ultimate_grey,
      :elephant_in_the_room
    ]
  },
  %{
    code: 249,
    hex: "b2b2b2",
    rgb: {178, 178, 178},
    hsl: {0.0, 0.0, 0.6980392156862745},
    foreground: "\e[38;5;249m",
    background: "\e[48;5;249m",
    legacy_names: [],
    names: [
      :palladium,
      :tangled_web,
      :silverstone,
      :harbour_fog,
      :praise_giving
    ]
  },
  %{
    code: 250,
    hex: "bcbcbc",
    rgb: {188, 188, 188},
    hsl: {0.0, 0.0, 0.7372549019607844},
    foreground: "\e[38;5;250m",
    background: "\e[48;5;250m",
    legacy_names: [],
    names: [
      :gravel_fint,
      :dust_to_dust,
      :glacier_grey,
      :alaskan_grey,
      :anti_rainbow_grey
    ]
  },
  %{
    code: 251,
    hex: "c6c6c6",
    rgb: {198, 198, 198},
    hsl: {0.0, 0.0, 0.7764705882352941},
    foreground: "\e[38;5;251m",
    background: "\e[48;5;251m",
    fave_name: :lunar_rock,
    legacy_names: [],
    names: [
      :autonomous,
      :lunar_rock,
      :paternoster,
      :silver_polish,
      :dreamscape_grey
    ]
  },
  %{
    code: 252,
    hex: "d0d0d0",
    rgb: {208, 208, 208},
    hsl: {0.0, 0.0, 0.8156862745098039},
    foreground: "\e[38;5;252m",
    background: "\e[48;5;252m",
    legacy_names: [:alto],
    names: [
      :white_metal,
      :cool_elegance,
      :clouded_vision,
      :ancestral_water,
      :american_silver
    ]
  },
  %{
    code: 253,
    hex: "dadada",
    rgb: {218, 218, 218},
    hsl: {0.0, 0.0, 0.8549019607843137},
    foreground: "\e[38;5;253m",
    background: "\e[48;5;253m",
    legacy_names: [],
    names: [
      :porpoise,
      :orochimaru,
      :subtle_touch,
      :urban_snowfall,
      :silver_setting
    ]
  },
  %{
    code: 254,
    hex: "e4e4e4",
    rgb: {228, 228, 228},
    hsl: {0.0, 0.0, 0.8941176470588236},
    foreground: "\e[38;5;254m",
    background: "\e[48;5;254m",
    legacy_names: [:mercury, :gainsboro],
    names: [
      :grey_whisper,
      :cold_morning,
      :tripoli_white,
      :titanium_white,
      :windswept_beach
    ]
  },
  %{
    code: 255,
    hex: "eeeeee",
    rgb: {238, 238, 238},
    hsl: {0.0, 0.0, 0.9333333333333333},
    foreground: "\e[38;5;255m",
    background: "\e[48;5;255m",
    legacy_names: [:white_smoke, :gallery],
    names: [
      :white_whale,
      :white_edgar,
      :super_silver,
      :crystal_bell,
      :essence_of_violet
    ]
  }
]

fave_codes =
  for %{code: code, names: [fave_name | _]} = color <- colors, into: %{} do
    {color[:fave_name] || fave_name, code}
  end

size = map_size(fave_codes)
if size != 256, do: raise("Fave codes size not 256 but #{size}")

for {name, code} <- fave_codes do
  if !is_atom(name), do: raise("Fave name #{name} not an atom")
  if code not in 0..255, do: raise("Fave code #{code} not in 0..255")
end

fave_names =
  Enum.map(fave_codes, fn {name, code} -> {code, name} end) |> Map.new()

color_codes =
  for %{code: code, legacy_names: legacy_names, names: names} <- colors,
      name <- legacy_names ++ Enum.filter(names, &is_atom/1),
      into: %{} do
    {name, code}
  end

size = map_size(color_codes)
if size != 1378, do: raise("Color codes size not 1378 but #{size}")

for {name, code} <- color_codes do
  if !is_atom(name), do: raise("Color name #{name} not an atom")
  if code not in 0..255, do: raise("Color code #{code} not in 0..255")
end

config :io_ansi_plus, colors: colors
config :io_ansi_plus, fave_codes: fave_codes
config :io_ansi_plus, fave_names: fave_names
config :io_ansi_plus, color_codes: color_codes
config :io_ansi_plus, legacy_colors: legacy_colors
config :io_ansi_plus, standard_colors: standard_colors
config :io_ansi_plus, standard_color_names: standard_color_names
