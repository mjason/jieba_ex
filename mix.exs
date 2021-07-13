defmodule JiebaEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :jieba,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/mjason/jieba_ex",
      name: "jieba_ex",
      description: "结巴分词rust版本的elixir版本绑定",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.22.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package() do
    [
      licenses: ["Apache-2.0"],
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE* license* CHANGELOG* changelog* src native),
      links: %{"GitHub" => "https://github.com/mjason/jieba_ex"}
    ]
  end
end
