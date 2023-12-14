defmodule AdventOfCode2023.Day1.Part2Test do
  use ExUnit.Case

  alias AdventOfCode2023.Day1.Part2

  test "ensure the original input works" do
    input = """
    two1nine
    eightwothree
    abcone2threexyz
    xtwone3four
    4nineeightseven2
    zoneight234
    7pqrstsixteen
    """

    assert Part2.run(input) == 281
  end

  test "gets the result" do
    assert Part2.run() == 54728
  end
end
