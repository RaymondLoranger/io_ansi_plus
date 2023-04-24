defmodule IO.ANSI.Plus.MixProject do
  use Mix.Project

  def project do
    [
      app: :io_ansi_plus,
      version: "0.1.44",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      name: "IO ANSI Plus",
      source_url: source_url(),
      description: description(),
      package: package(),
      deps: deps()
      # IO.ANSI.Plus.IE.write_color_samples/0...
      # dialyzer: [plt_add_apps: [:egd]]
    ]
  end

  defp source_url do
    "https://github.com/RaymondLoranger/io_ansi_plus"
  end

  defp description do
    """
    Functionality to render ANSI escape sequences.
    Clone of module IO.ANSI but supporting named Xterm colors.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "config/persist*.exs"],
      maintainers: ["Raymond Loranger"],
      licenses: ["MIT"],
      links: %{"GitHub" => source_url()}
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
      {:dialyxir, "~> 1.0", only: :dev, runtime: false},
      # {:egd, github: "erlang/egd", only: :dev, runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},
      {:persist_config, "~> 0.4", runtime: false}
    ]
  end
end
