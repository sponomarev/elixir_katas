defmodule FizzBuzz do
  def print(stop) do
    Enum.each 0..stop, fn(el) ->
      IO.puts convert(el)
    end
  end

  def convert(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0, 0} -> 'FizzBuzz'
      {0, _} -> 'Fizz'
      {_, 0} -> 'Buzz'
      {_, _} -> n
    end
  end
end
