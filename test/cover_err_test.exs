defmodule CoverErrTest do
  use ExUnit.Case

  test "the error" do
    assert CoverErr.culprit == :ok
  end
end
