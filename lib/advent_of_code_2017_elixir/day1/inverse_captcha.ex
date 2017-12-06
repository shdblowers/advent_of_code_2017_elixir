defmodule AdventOfCode2017Elixir.Day1.InverseCaptcha do

  def solve_next_digit(input) do
    input
    |> parse_input()
    |> store_elem_with_pair(&fetch_next_element/2)
    |> sum_matches()
  end

  def solve_halfway_around_digit(input) do
    input
    |> parse_input()
    |> store_elem_with_pair(&fetch_halfway_around_element/2)
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

  defp fetch_next_element(list, current_index) do
    next_index = if current_index == (length(list) - 1) do 0 else current_index + 1 end

    Enum.fetch!(list, next_index)
  end

  defp fetch_halfway_around_element(list, current_index) do
   list_length = length(list)

    half_length = div(list_length, 2)

    current_plus_half = (current_index + half_length)

    halfway_around_index = 
      if current_plus_half > (list_length - 1) do 
        current_plus_half - list_length 
      else 
        current_plus_half 
      end
  
    Enum.fetch!(list, halfway_around_index)
  end

  defp sum_matches(list) do
    Enum.reduce(list, 0, fn({num1, num2}, acc) ->
      if num1 == num2 do num1 + acc else acc end
    end)
  end

end