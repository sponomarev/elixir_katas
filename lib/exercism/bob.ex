defmodule Exercism.Bob do
  def hey(input) do
    cond do
      String.match?(input, ~r/^\s*$/) -> "Fine. Be that way!"
      String.match?(input, ~r/.*\?$/) -> "Sure."
      String.match?(input, ~r/\p{L}+/) and String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
