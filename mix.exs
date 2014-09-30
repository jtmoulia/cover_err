defmodule CoverErr.Mixfile do
  use Mix.Project

  def project do
    [app: :cover_err,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     deps: deps,
     test_coverage: [tool: ExCoveralls]]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:excoveralls, "~> 0.3.4"}]
  end
end
