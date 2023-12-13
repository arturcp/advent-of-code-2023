defmodule AdventOfCode2023.Day1.Part1 do
  alias AdventOfCode2023.Input

  def run(input \\ nil) do
    Input.read_input(1, input)
    |> Enum.map(&get_digits/1)
    |> Enum.map(&add_first_and_last/1)
    |> sum_all()
  end

  defp get_digits(line) do
    String.graphemes(line)
    |> Enum.filter(fn letter ->
        letter in ["0","1","2","3","4","5","6","7","8","9"]
    end)
  end

  defp add_first_and_last(list) do
    String.to_integer(List.first(list) <> List.last(list))
  end

  defp sum_all(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end
