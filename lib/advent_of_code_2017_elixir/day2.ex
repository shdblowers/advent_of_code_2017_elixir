defmodule AdventOfCode2017Elixir.Day2 do
  alias AdventOfCode2017Elixir.Day2.CorruptionChecksum

  @root_dir File.cwd!()

  def solve_part_1() do
    File.read!("#{@root_dir}/input/day2.tsv")
    |> CorruptionChecksum.solve_spreadsheet_checksum()
  end

end