defmodule Exercism.Words do
  @spec count(String.t) :: map()
  def count(sentence) do
    Regex.scan(~r/[\p{L}\d-]+/iu, sentence) |> List.flatten |> Enum.reduce(%{}, fn(word, dictionary) ->
      Map.update(dictionary, String.downcase(word), 1, &(&1 + 1))
    end)
  end
end
