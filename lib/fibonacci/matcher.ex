defmodule Fibonacci.Matcher do
  def calculate(n) do
    case n do
      0 -> 0
      1 -> 1
      x when is_number(x) -> calculate(x - 2) + calculate(x - 1)
    end
  end
end
