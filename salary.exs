defmodule IncomeTax do
  def tax_rate(salary) do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> salary * 0.05
      salary <= 6000 -> salary * 0.10
      salary > 6000 -> salary * 0.15
    end
  end
end

user_input = IO.gets("Enter your salary\n")

case Float.parse(user_input) do
  :error ->
    IO.puts("Invalid salary: #{user_input}")

  {user_input, _} ->
    tax_rate = IncomeTax.tax_rate(user_input)
    # net_salary = user_input - tax_rate
    IO.puts("Your income tax is #{tax_rate} and your net salary is #{user_input - tax_rate}")
end
