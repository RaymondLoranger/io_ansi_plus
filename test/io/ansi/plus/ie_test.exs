defmodule IO.ANSI.Plus.IETest do
  use ExUnit.Case, async: true
  use PersistConfig

  alias IO.ANSI.Plus.IE
  alias IO.ANSI.Plus, as: ANSI

  @colors get_env(:colors)

  test "rgb's properly converted to hsl's" do
    message = fn code, hsl, to_hsl ->
      [
        :hot_pink,
        """
        \nFor code #{code},
        configured hsl #{inspect(hsl)} !=
        calculated hsl #{inspect(to_hsl)}
        """
      ]
    end

    compare = fn to_hsl, hsl, code ->
      if hsl != to_hsl, do: message.(code, hsl, to_hsl) |> ANSI.puts()
    end

    assert(
      for %{code: code, rgb: rgb, hsl: hsl} <- @colors, uniq: true do
        IE.rgb_to_hsl(rgb) |> compare.(hsl, code)
      end == [nil]
    )
  end

  test "name counts are valid" do
    name_counts = IE.name_counts()
    assert List.first(name_counts) == {8, 178}
    assert List.last(name_counts) == {1, 16}
    assert Enum.count(name_counts) == 256
  end

  test "there are no duplicate names" do
    assert IE.duplicate_names() == []
  end

  test "color names are valid" do
    color_names = IE.color_names()
    assert length(color_names) == 1378

    for {name, code} <- color_names do
      assert is_atom(name)
      assert code in 0..255
    end
  end

  test "fave names are valid" do
    fave_names = IE.fave_names()
    assert length(fave_names) == 256

    for {name, code} <- fave_names do
      assert is_atom(name)
      assert code in 0..255
    end
  end
end
