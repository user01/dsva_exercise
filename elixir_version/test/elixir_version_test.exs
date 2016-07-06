defmodule ElixirVersionTest do
  use ExUnit.Case
  doctest ElixirVersion
  
  test "Simple for 2" do
    assert ElixirVersion.trial_simple(2) == 1
  end
  
  test "Simple for 5" do
    assert ElixirVersion.trial_simple(5) == 5
  end
  
  test "Group" do
    results = 1..10 |> Enum.map(&(ElixirVersion.trial_simple(&1)))
    assert results == [0, 1, 7, 2, 5, 8, 16, 3, 19, 6]
  end
end
