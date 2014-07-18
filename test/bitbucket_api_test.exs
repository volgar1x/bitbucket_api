defmodule BitbucketApiTest do
  use ExUnit.Case
  import BitbucketApi

  test "params to string" do
    assert params_to_string([]) == ""
    assert params_to_string([milestone: "alpha"]) == "?milestone=alpha"
  end

  test "hackney options" do
    assert to_hackney_options([]) == []
    assert to_hackney_options([user: "foo", pass: "bar"]) == [basic_auth: {"foo", "bar"}]
  end
end
