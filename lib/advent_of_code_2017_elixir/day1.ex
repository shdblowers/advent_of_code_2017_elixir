defmodule AdventOfCode2017Elixir.Day1 do
  alias AdventOfCode2017Elixir.Day1.InverseCaptcha

  @root_dir File.cwd!()

  def solve_part_1() do
    File.read!("#{@root_dir}/input/day1.txt")
    |> InverseCaptcha.solve_next_digit()
  end

  def solve_part_2() do
    File.read!("#{@root_dir}/input/day1.txt")
    |> InverseCaptcha.solve_halfway_around_digit()
  end
end