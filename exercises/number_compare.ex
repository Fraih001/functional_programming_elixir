defmodule NumberCompare do
  # def greater(number, other_number) do
  #   check(number >= other_number, number, other_number)
  # end

  # defp check(true, number, _), do: number
  # defp check(false, _, other_number), do: other_number

  # # using guards
  # def greater(number, other_number) when number >= other_number, do: number
  # def greater(_, other_number), do: other_number

  # using anon funcs

  # number_compare = fn
  #   number, other_number when number >= other_number -> number()
  #   _, other_number -> other_number
  # end

  # using if conditionals

  # def greater(number, other_number) do
  #   if number >= other_number do
  #     number
  #   else
  #     other_number
  #   end
  # end

  # using unless conditional

  def greater(number, other_number) do
    unless number < other_number do
      number
    else
      other_number
    end
  end
end
