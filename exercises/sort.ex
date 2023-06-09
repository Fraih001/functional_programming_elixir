defmodule Sort do
  # def ascending([]), do: []
  # def ascending([a]), do: [a]
  # def ascending(list) do
  #   half_size = div(Enum.count(list), 2)

  #   {list_a, list_b} = Enum.split(list, half_size)

  #   ascending_merge(
  #     ascending(list_a),
  #     ascending(list_b)
  #   )
  # end

  # defp ascending_merge([], list_b), do: list_b
  # defp ascending_merge(list_a, []), do: list_a
  # defp ascending_merge([head_a | tail_a], list_b = [head_b | _]) when head_a <= head_b do

  #   [head_a | ascending_merge(tail_a, list_b)]
  # end
  # defp ascending_merge(list_a = [head_a | _], [head_b | tail_b]) when head_a > head_b do

  #   [head_b | ascending_merge(list_a, tail_b)]
  # end

  def asc([]), do: []
  def asc([a]), do: [a]
  def asc(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(asc(list_a),
          asc(list_b),
          [])
  end

  defp merge([], list_b, merged), do: merged ++ list_b
  defp merge(list_a, [], merged), do: merged ++ list_a
  defp merge([head_a | tail_a], list_b = [head_b | _], merged)
    when head_a <= head_b do
      merge(tail_a, list_b, merged ++ [head_a])
    end
  defp merge(list_a = [head_a | _], [head_b | tail_b], merged)
    when head_a > head_b do
      merge(list_a, tail_b, merged ++ [head_b])
    end

  def descending([]), do: []
  def descending([a]), do: [a]
  def descending(list) do
    half_size = div(Enum.count(list), 2)

    {list_a, list_b} = Enum.split(list, half_size)

    descending_merge(
      descending(list_a),
      descending(list_b)
    )
  end

  defp descending_merge([], list_b), do: list_b
  defp descending_merge(list_a, []), do: list_a
  defp descending_merge([head_a | tail_a], list_b = [head_b | _]) when head_a > head_b do

    [head_a | descending_merge(tail_a, list_b)]
  end
  defp descending_merge(list_a = [head_a | _], [head_b | tail_b]) when head_a <= head_b do

    [head_b | descending_merge(list_a, tail_b)]
  end
end
