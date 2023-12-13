defmodule AdventOfCode2023.InputTest do
  use ExUnit.Case

  alias AdventOfCode2023.Input

  test "reads the lines of the file and returns an array" do
    assert Input.read_input(0) == ["a", "b", "c", "d", "e"]
  end
end
