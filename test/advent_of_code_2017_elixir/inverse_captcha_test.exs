defmodule AdventOfCode2017Elixir.InverseCaptchaTest do
  use ExUnit.Case

  alias AdventOfCode2017Elixir.InverseCaptcha

  test "parse_input()" do
    assert InverseCaptcha.parse_input("123") == [1,2,3]
  end

  test "store_number_with_next_number()" do
    assert InverseCaptcha.store_number_with_next_number([1, 2,3]) == [{1,2}, {2,3}, {3,1}]
  end

end
