defmodule BitbucketApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bitbucket_api,
      version: "0.0.1",
      elixir: "~> 0.13.3",
      deps: deps,
      description: description,
      package: package,
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:hackney]]
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
      { :ex_doc, github: "elixir-lang/ex_doc", ref: "4a6391bf2d6dacec8c6b52ef2506fb5607eb894c" },
      # { :markdown, github: "devinus/markdown", ref: "5f61d6be25bec730a361d82a23d423f4a29bc67a" },
    ]
  end

  defp description do
    """
    Create hooks for Bitbucket.
    """
  end

  defp package do
    [
      files: ~w(lib LICENSE README.md mix.exs),
      contributors: ["Antoine CHAUVIN"],
      licenses: ["The MIT License (MIT)"],
      links: %{
        "Github" => "https://github.com/Blackrush/bitbucket_api",
        "Docs" => "https://blackrush.github.io/bitbucket_api/",
      }
    ]
  end
end
