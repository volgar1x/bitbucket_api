defmodule BitbucketApi.Milestones do
  import BitbucketApi

  def get_all(user, repo, options \\ []) do
    hackney = to_hackney_options(options)

    resp = get("1.0/repositories/#{user}/#{repo}/issues/milestones", [], [hackney: hackney]).body

    for %{"name" => name} <- resp, do: name
  end
end
