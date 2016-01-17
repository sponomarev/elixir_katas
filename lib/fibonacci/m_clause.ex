defmodule Fibonacci.MClause do
  def calculate(0), do: 0
  def calculate(1), do: 1

  def calculate(n) when is_number(n) do
    calculate(n - 2) + calculate(n - 1)
  end
end
