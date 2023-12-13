defmodule AdventOfCode2023.Input do
  def read_input(day) do
    File.read!("lib/day-#{day}/input.txt")
    |> String.split("\n", trim: true)
  end
end
