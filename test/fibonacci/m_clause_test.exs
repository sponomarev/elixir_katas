defmodule Fibonacci.MClauseTest do
  use ExUnit.Case
  doctest Fibonacci.MClause

  test "with good input" do
    assert Fibonacci.MClause.calculate(0) == 0
    assert Fibonacci.MClause.calculate(1) == 1
    assert Fibonacci.MClause.calculate(2) == 1
    assert Fibonacci.MClause.calculate(5) == 5
    assert Fibonacci.MClause.calculate(10) == 55
  end

  test "with bad input" do
    assert_raise FunctionClauseError, fn ->
     Fibonacci.MClause.calculate("0")
    end
  end
end
