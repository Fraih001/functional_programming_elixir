user_input = IO.gets("write your ability score:\n")
{ability_score, _} = Integer.parse(user_input)
ability_modifier = (ability_score - 10) / 2
IO.puts("Your ability modifer is #{ability_modifier}")
