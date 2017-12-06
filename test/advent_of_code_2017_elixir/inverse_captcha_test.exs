defmodule AdventOfCode2017Elixir.InverseCaptchaTest do
  use ExUnit.Case

  alias AdventOfCode2017Elixir.InverseCaptcha

  test "solve_next_digit for simple example" do
    assert InverseCaptcha.solve_next_digit("1122") == 3
  end

  test "solve_next_digit for all 1s" do
    assert InverseCaptcha.solve_next_digit("11111") == 5
  end

  test "solve_next_digit for result equalling 0" do
    assert InverseCaptcha.solve_next_digit("12345") == 0
  end

  test "solve_next_digit intermediate example" do
    assert InverseCaptcha.solve_next_digit("91212129") == 9
  end

end
