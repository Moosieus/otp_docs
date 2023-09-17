defmodule OTPDocsTest do
  use ExUnit.Case
  doctest OTPDocs

  test "greets the world" do
    assert OTPDocs.hello() == :world
  end
end
