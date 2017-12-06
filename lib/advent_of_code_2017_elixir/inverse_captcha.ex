defmodule AdventOfCode2017Elixir.InverseCaptcha do

  def solve(input_string) do
    input_string
    |> parse_input()
    |> store_number_with_next_number()
    |> Enum.reduce(0, fn({num1, num2}, acc) ->
      if num1 == num2 do num1 + acc else acc end
    end)
  end
  
  defp parse_input(input_string) do
    input_string
    |> String.split("", trim: true)
    |> Enum.map(&(String.to_integer(&1)))
  end

  defp store_number_with_next_number(num_list) do
    num_list
    |> Enum.with_index()
    |> Enum.map(fn({num, index}) -> {num, fetch_next_element_in_circular_list(num_list, index)} end)

  end

  defp fetch_next_element_in_circular_list(list, current_index) do
    next_index = if current_index == (length(list) - 1) do 0 else current_index + 1 end

    Enum.fetch!(list, next_index)
  end

end