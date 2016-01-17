defmodule FizzBuzz do
  def print(stop) do
    Enum.each 0..stop, fn(el) ->
      IO.puts convert(el)
    end
  end

  def convert(n) do
    case {rem(n, 3), rem(n, 5), n} do
      {0, 0, _} -> 'FizzBuzz'
      {0, _, _} -> 'Fizz'
      {_, 0, _} -> 'Buzz'
      {_, _, x} -> x
    end
  end
end
