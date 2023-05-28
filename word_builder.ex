defmodule WordBuilder do
  # def build(alphabet, positions) do
  #   partial = fn at -> String.at(alphabet, at) end
  #   letters = Enum.map(positions, partial)
  #   Enum.join(letters)
  # end

  def build(alphabet, positions) do
    letters = Enum.map(positions, &(String.at(alphabet, &1)))
    Enum.join(letters)
  end
end
