defmodule BitbucketApi do
  use HTTPoison.Base

  def process_url(url) do
    IO.inspect url
    "https://api.bitbucket.org/" <> url
  end

  def process_response_body(body) do
    JSEX.decode! body
  end

  def to_hackney_options(options) do
    to_hackney_options_basic_auth(options)
  end

  defp to_hackney_options_basic_auth(options) do
    user = Keyword.get options, :user
    pass = Keyword.get options, :pass

    if user && pass do
      [basic_auth: {user, pass}]
    else
      []
    end
  end

  def params_to_string([]), do: ""
  def params_to_string(params) when is_list(params), do: "?" <> (params |> Enum.map(fn({k, v}) -> "#{k}=#{v}" end) |> Enum.join("&"))
end
