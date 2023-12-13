defmodule AdventOfCode2023.Day1.Part1Test do
  use ExUnit.Case

  alias AdventOfCode2023.Day1.Part1

  test "ensure the original input works" do
    input = """
    1abc2
    pqr3stu8vwx
    a1b2c3d4e5f
    treb7uchet
    """
    assert Part1.run(input) == 142
  end

  test "gets the result" do
    assert Part1.run() == 54916
  end
end
