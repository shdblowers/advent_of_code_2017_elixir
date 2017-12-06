defmodule AdventOfCode2017Elixir.Day2.CorruptionChecksum do
  

  def solve_spreadsheet_checksum(input) do
    input
    |> parse_input()
    |> Enum.map(&Enum.min_max/1)
    |> Enum.map(&checksum/1)
    |> Enum.sum()

  end

  defp parse_input(input_string) do
    input_string
    |> String.split("\n", trim: true)
    |> Enum.map(fn(line) ->
      strings = String.split(line, "\t", trim: true)
      Enum.map(strings, &(String.to_integer(&1)))
    end)
  end

  defp checksum({min, max}), do: max - min

end