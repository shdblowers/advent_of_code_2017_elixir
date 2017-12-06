defmodule AdventOfCode2017Elixir.InverseCaptchaTest do
  use ExUnit.Case

  alias AdventOfCode2017Elixir.InverseCaptcha

  test "solve for simple example" do
    assert InverseCaptcha.solve("1122") == 3
  end

  test "solve for all 1s" do
    assert InverseCaptcha.solve("11111") == 5
  end

  test "solve for result equalling 0" do
    assert InverseCaptcha.solve("12345") == 0
  end

  test "solve intermediate example" do
    assert InverseCaptcha.solve("91212129") == 9
  end

end
