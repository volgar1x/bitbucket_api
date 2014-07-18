defmodule BitbucketApi.Issues do
  def find(user, repo, filters \\ [], options \\ []) do
    hackney = BitbucketApi.to_hackney_options(options)

    params = BitbucketApi.params_to_string(filters)

    BitbucketApi.get("1.0/repositories/#{user}/#{repo}/issues#{params}", [], [hackney: hackney]).body
  end
end