defmodule AdventOfCode2023.Day1.Part2 do
  alias AdventOfCode2023.Input

  @written_numbers %{
    "one" => "1",
    "two" => "2",
    "three"=> "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven"=> "7",
    "eight" => "8",
    "nine" => "9"
  }

  def run(input \\ nil) do
    Input.read_input(1, input)
    |> Enum.map(&replace_written_numbers/1)
    |> Enum.map(&get_digits/1)
    |> Enum.map(&concatenate_first_and_last/1)
    |> sum_all()
  end

  defp replace_written_numbers(string) do
    regular_keys = Map.keys(@written_numbers)
    first_replacement = String.replace(string, Map.keys(@written_numbers), fn match ->
      insert_value(match, @written_numbers[match])
    end, global: false)

    reversed_keys = Enum.map(regular_keys, &String.reverse/1)
    reversed_string = String.reverse(first_replacement)
    second_replacement = String.replace(reversed_string, reversed_keys, fn match ->
      insert_value(match, @written_numbers[String.reverse(match)])
    end, global: false)

    String.reverse(second_replacement)
  end

  defp insert_value(string, value) do
    String.slice(string, 0, 1) <> value <> String.slice(string, 1..-1)
  end

  defp get_digits(line) do
    String.graphemes(line)
    |> Enum.filter(fn letter ->
      letter in ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    end)
  end

  defp concatenate_first_and_last(list) do
    String.to_integer(List.first(list) <> List.last(list))
  end

  defp sum_all(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end
