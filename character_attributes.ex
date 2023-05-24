defmodule CharacterAttributes do
  # my answer
  # def char_atts(%{} = user_input) do
  #   %{
  #     strength: strength_points,
  #     dexterity: dexterity_points,
  #     intelligence: intelligence_points
  #   } = user_input

  #   strength_points * 2 + dexterity_points * 3 + intelligence_points * 3
  # end

  # book answer
  defmodule CharacterAttributes do
    def total_spent(%{strength: str, dexterity: dex, intelligence: int}) do
      str * 2 + dex * 3 + int * 3
    end
  end
end
