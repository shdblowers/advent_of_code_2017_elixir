defmodule AdventOfCode2017Elixir.InverseCaptcha do

  def solve_next_digit(input) do
    input
    |> parse_input()
    |> store_elem_with_pair(&fetch_next_element_in_circular_list/2)
    |> sum_matches()
  end
  
  defp parse_input(input_string) do
    input_string
    |> String.split("", trim: true)
    |> Enum.map(&(String.to_integer(&1)))
  end

  defp store_elem_with_pair(list, get_pair_function) do
    list
    |> Enum.with_index()
    |> Enum.map(fn({elem, index}) -> {elem, get_pair_function.(list, index)} end)
  end

  defp fetch_next_element_in_circular_list(list, current_index) do
    next_index = if current_index == (length(list) - 1) do 0 else current_index + 1 end

    Enum.fetch!(list, next_index)
  end

  defp sum_matches(list) do
    Enum.reduce(list, 0, fn({num1, num2}, acc) ->
      if num1 == num2 do num1 + acc else acc end
    end)
  end

end