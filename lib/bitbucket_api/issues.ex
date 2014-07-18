defmodule BitbucketApi.Issues do
  import BitbucketApi

  def find(user, repo, filters \\ [], options \\ []) do
    hackney = to_hackney_options(options)
    params = params_to_string(filters)

    get("1.0/repositories/#{user}/#{repo}/issues#{params}", [], [hackney: hackney]).body
  end
end