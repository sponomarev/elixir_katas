defmodule DomainExtractorTest do
  use ExUnit.Case

  @cases [
    ["http://github.com/carbonfive/raygun", "github"],
    ["http://www.zombie-bites.com", "zombie-bites"],
    ["https://www.cnet.com", "cnet"],
    ["https://foo.bar.evl.ms/abc/def/ghj.klm.op", "evl"]
  ]

  test "extract" do
    Enum.each @cases, fn([url, domain]) ->
      assert domain == DomainExtractor.extract(url)
    end
  end
end
