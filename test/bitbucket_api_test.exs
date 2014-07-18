defmodule BitbucketApiTest do
  use ExUnit.Case
  import BitbucketApi

  test "params to string" do
    assert params_to_string([]) == ""
    assert params_to_string([milestone: "alpha"]) == "?milestone=alpha"
  end
end
