alias IO.ANSI.Plus, as: ANSI

ANSI.puts(["Hello ", :light_red, "world!"])

ANSI.puts(["Hello ", :baby_blue, "world!"])
ANSI.puts(["Hello ", :frozen_turquoise, "world!"]) # same color as above

ANSI.puts(["Hello ", :orange_red_background, :light_white, "world!"])

ANSI.puts([
  :free_speech_red_background,
  :light_white,
  "ERROR: invalid coordinates"
])

ANSI.puts([
  :red_door_background,
  :light_white,
  "ERROR: invalid coordinates"
]) # same color as above

ANSI.puts([
  :fuchsia_background,
  :light_white,
  "Game ",
  :stratos,
  "Skyfall",
  :light_white,
  " already started."
])

ANSI.gets([
  :dark_green_background,
  :light_white,
  "Hello, what is your name?",
  :reset,
  " "
])
