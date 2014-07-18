defmodule BitbucketApi.Milestones do
  def get_all(user, repo, options \\ []) do
    hackney = BitbucketApi.to_hackney_options(options)

    resp = BitbucketApi.get("1.0/repositories/#{user}/#{repo}/issues/milestones", [], [hackney: hackney]).body

    for %{"name" => name} <- resp, do: name
  end
end
