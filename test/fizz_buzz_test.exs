defmodule FizzBuzzTest do
  use ExUnit.Case

  @cases [
    [0, 'FizzBuzz'],
    [1, 1],
    [2, 2],
    [3, 'Fizz'],
    [5, 'Buzz'],
    [6, 'Fizz'],
    [15, 'FizzBuzz']
  ]

  test "convert" do
    Enum.each @cases, fn ([number, result]) ->
      assert result == FizzBuzz.convert(number)
    end
  end
end
