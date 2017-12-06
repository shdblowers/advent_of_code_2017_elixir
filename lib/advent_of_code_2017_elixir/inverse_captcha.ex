defmodule AdventOfCode2017Elixir.InverseCaptcha do
  
  def parse_input(input_string) do
    input_string
    |> String.split("", trim: true)
    |> Enum.map(&(String.to_integer(&1)))
  end

  def store_number_with_next_number(num_list) do
    [{1,2}, {2,3}, {3,1}]
  end

end