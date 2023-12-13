defmodule AdventOfCode2023.Day1.Part1V2 do
  alias AdventOfCode2023.Input

  def run(input \\ nil) do
    Input.read_input(1, input)
    |> Enum.map(&get_digits/1)
    |> Enum.reduce(0, fn line, acc -> acc + get_first_and_last(line) end)
  end

  defp get_digits(line) do
    line
    |> String.replace(~r/[^\d\n]/, "")
  end

  defp get_first_and_last(line) do
    String.to_integer("#{String.first(line)}#{String.last(line)}")
  end
end
