defmodule Math do
  # def sum([]), do: 0
  # def sum([head | tail]), do: head + sum(tail)

  def sum(n), do: sum(n, 0)
  def sum([], acc), do: acc
  def sum([head | tail], acc), do: sum(tail, head+acc)
end
