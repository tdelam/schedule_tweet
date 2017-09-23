defmodule ScheduleTweet.Mixfile do
  use Mix.Project

  def project do
    [
      app: :schedule_tweet,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {ScheduleTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8.6"},
      {:quantum, "~> 1.8"},
      {:extwitter, "~> 0.7.2"},
      {:oauth, github: "tim/erlang-oauth"},
      {:mock, "~> 0.3.1"},
      {:mix_test_watch, "~> 0.5.0"}
    ]
  end
end
