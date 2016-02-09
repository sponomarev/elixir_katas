defmodule Exercism.Sublist do
  def compare([], []), do: :equal
  def compare([], _), do: :sublist
  def compare(_, []), do: :superlist
  def compare(a, b) do
    case {length(a), length(b)} do
      {la, lb} when la < lb ->
        is_sublist(a, b, :sublist)
      {la, lb} when la > lb ->
        is_sublist(b, a, :superlist)
      _ ->
        if a === b, do: :equal, else: :unequal
    end
  end

  def is_sublist(_, _, hypothesis \\ :sublist)
  def is_sublist([], _, hypothesis), do: hypothesis
  def is_sublist(a, b = [_|t], hypothesis) do
    case { length(a), length(b) } do
      {la, lb} when la > lb ->
        :unequal
      {la, lb} when la < lb ->
        if a === Enum.slice(b, 0, length(a)) do
          hypothesis
        else
          is_sublist(a, t, hypothesis)
        end
      _ ->
        if a === b, do: hypothesis, else: :unequal
    end
  end
end
