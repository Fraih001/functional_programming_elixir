defmodule ScrewsFactory do
  # def run(pieces) do
  #   pieces
  #   # |> Enum.map(&add_thread/1)
  #   # |> Enum.map(&add_head/1)
  #   |> Stream.map(&add_thread/1)
  #   |> Stream.map(&add_head/1)
  #   |> Enum.each(&output/1)
  # end

  # defp add_thread(piece) do
  #   Process.sleep(50)
  #   piece <> "--"
  # end

  # defp add_head(piece) do
  #   Process.sleep(100)
  #   "o" <> piece
  # end

  # def output(screw) do
  #   IO.inspect(screw)
  # end

  def run(pieces) do
    pieces
    |> Stream.chunk(50)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(100)
    |> Stream.flat_map(&add_head/1)
    |> Enum.each(&output/1)
  end

  defp add_thread(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end

  defp add_head(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end

  defp output(screw) do
    IO.inspect(screw)
  end
end
