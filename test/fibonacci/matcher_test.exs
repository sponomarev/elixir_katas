defmodule Fibonacci.MatcherTest do
  use ExUnit.Case
  doctest Fibonacci.Matcher

  test "with good input" do
    assert Fibonacci.Matcher.calculate(0) == 0
    assert Fibonacci.Matcher.calculate(1) == 1
    assert Fibonacci.Matcher.calculate(2) == 1
    assert Fibonacci.Matcher.calculate(5) == 5
    assert Fibonacci.Matcher.calculate(10) == 55
  end

  test "with bad input" do
    assert_raise CaseClauseError, fn ->
     Fibonacci.Matcher.calculate("0")
    end
  end
end
