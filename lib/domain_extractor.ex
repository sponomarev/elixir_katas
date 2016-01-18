defmodule DomainExtractor do
  def extract(url) do
    URI.parse(url).host |> String.split(".") |> Enum.at(-2)
  end
end
