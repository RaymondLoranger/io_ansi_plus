defmodule IO.ANSI.PlusTest do
  use ExUnit.Case, async: true

  alias IO.ANSI.Plus

  doctest Plus

  describe "Plus.format/2" do
    # ANSI color...
    test "the color red" do
      assert Plus.format(["Hello, ", :red, "world!"], true) ==
               [[[[[], "Hello, "] | "\e[31m"], "world!"] | "\e[0m"]
    end

    # Xterm color...
    test "the color purple" do
      assert Plus.format(["Hello, ", :purple, "world!"], true) ==
               [[[[[], "Hello, "] | "\e[38;5;5m"], "world!"] | "\e[0m"]
    end
  end
end
