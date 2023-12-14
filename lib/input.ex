defmodule AdventOfCode2023.Input do
  def read_input(day, input \\ nil)
  def read_input(_day, input) when not is_nil(input) do
    input
    |> String.split("\n", trim: true)
  end

  def read_input(day, _) do
    File.read!("lib/day-#{day}/input.txt")
    |> String.split("\n", trim: true)
  end
end
