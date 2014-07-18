defmodule BitbucketApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bitbucket_api,
      version: "0.0.1",
      elixir: "~> 0.13.3",
      deps: deps,
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: []]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, github: "edgurgel/httpoison", tag: "0.1.1" },
      { :hackney, github: "benoitc/hackney", ref: "cf90543f9cc21ffea34d71035521b0102b8555cf" },
      { :jsex, "~> 2.0.0" },
      { :jsx, "~> 2.0" },
    ]
  end
end
