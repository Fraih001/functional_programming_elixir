defmodule Fibonacci do
  # def fib(n) when n < 2, do: n
  # def fib(n) do
  #   fib(n - 2) + fib(n - 1)
  # end

  def fib(n) do
    Stream.unfold({0, 1}, fn {n1, n2} -> {n1, {n2, n1 + n2}} end)
    |> Enum.take(n)
    |> Enum.at(n-1)
  end
end
