defmodule MatchStickFactory do
  @size_big 50
  @size_medium 20
  @size_small 5

  def boxes(num_of_matchsticks) do
    big_boxes = div(num_of_matchsticks, @size_big)
    remaining = rem(num_of_matchsticks, @size_big)

    medium_boxes = div(remaining, @size_medium)
    remaining = rem(remaining, @size_medium)

    small_boxes = div(remaining, @size_small)
    remaining = rem(remaining, @size_small)

    %{big: big_boxes, medium: medium_boxes, remaining_matchsticks: remaining, small: small_boxes}
  end
end
