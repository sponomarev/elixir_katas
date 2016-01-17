defmodule Fibonacci.MatcherBench do
  use Benchfella

  bench "matcher 0", do: Fibonacci.Matcher.calculate(0)
  bench "matcher 1", do: Fibonacci.Matcher.calculate(1)
  bench "matcher 5", do: Fibonacci.Matcher.calculate(5)

  bench "m clause 0", do: Fibonacci.MClause.calculate(0)
  bench "m clause 1", do: Fibonacci.MClause.calculate(1)
  bench "m clause 5", do: Fibonacci.MClause.calculate(5)
end
