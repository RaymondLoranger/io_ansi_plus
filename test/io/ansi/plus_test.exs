defmodule IO.ANSI.PlusTest do
  use ExUnit.Case, async: true

  alias IO.ANSI.Plus

  doctest Plus

  describe "Plus.format/2" do
    # ------------
    # ANSI colors...
    # ------------
    test "the color red" do
      assert Plus.format(["Hello, ", :red, "world!"], true) ==
               [[[[[], "Hello, "] | "\e[31m"], "world!"] | "\e[0m"]
    end

    test "the color bright red" do
      assert Plus.format(["Hello, ", :red, :bright, "world!"], true) ==
               [[[[[[], "Hello, "] | "\e[31m"] | "\e[1m"], "world!"] | "\e[0m"]
    end

    test "the color light red" do
      assert Plus.format(["Hello, ", :light_red, "world!"], true) ==
               [[[[[], "Hello, "] | "\e[91m"], "world!"] | "\e[0m"]
    end

    # -------------
    # Xterm colors...
    # -------------
    test "the color purple" do
      assert Plus.format(["Hello, ", :purple, "world!"], true) ==
               [[[[[], "Hello, "] | "\e[38;5;5m"], "world!"] | "\e[0m"]
    end

    test "the color polar bear in a blizzard" do
      assert Plus.format(["Hi, ", :polar_bear_in_a_blizzard, "world!"], true) ==
               [[[[[], "Hi, "] | "\e[38;5;15m"], "world!"] | "\e[0m"]
    end

    test "the color composite artefact green" do
      assert Plus.format(["Hi, ", :composite_artefact_green, "world!"], true) ==
               [[[[[], "Hi, "] | "\e[38;5;76m"], "world!"] | "\e[0m"]
    end
  end
end
