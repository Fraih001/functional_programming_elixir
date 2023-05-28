defmodule Factorial do
  # def of(0), do: 1
  # def of(1), do: 1
  # def of(2), do: 2 * 1
  # def of(3), do: 3 * 2 * 1
  # def of(4), do: 4 * 3 * 2 * 1

  # def of(0), do: 1
  # def of(1), do: 1 * of(0)
  # def of(2), do: 2 * of(1)
  # def of(3), do: 3 * of(2)
  # def of(4), do: 4 * of(3)

  # def of(0), do: 1
  # def of(n) when n > 0, do: n * of(n-1)

  # def of(0), do: 1
  # def of(n) when n > 0 do
  #   1..10_000_000
  #     |> Enum.take(n)
  #     |> Enum.reduce(&(&1 * &2))
  # end

  do of(0), do: 1
  do of(n) when n > 0 do
    Stream.iterate(1, &(&1 + 1))
      |> Enum.take(n)
      |> Enum.reduce(&(&1 * &2))
  end

end
