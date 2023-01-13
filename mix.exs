defmodule VeliTurnstile.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/cart96/veli_turnstile"

  def project() do
    [
      app: :veli_turnstile,
      version: @version,
      elixir: "~> 1.8",
      consolidate_protocols: Mix.env() != :test,
      description: description(),
      package: package(),
      deps: deps(),
      name: "VeliTurnstile",
      source_url: @source_url
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Cloudflare Turnstile validator module for Veli"
  end

  defp package() do
    [
      name: "veli_turnstile",
      licenses: ["MIT License"],
      links: %{"GitHub" => @source_url},
      maintainers: ["icecat696 (cart96)"]
    ]
  end
end
