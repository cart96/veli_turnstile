defmodule VeliTurnstile do
  @moduledoc """
  Cloudflare Turnstile validator module for Veli.

      Veli.add_validator(:turnstile, VeliTurnstile)

      rule = [type: :string, turnstile: "secret key"]
      Veli.valid("turnstile response", rule) |> Veli.error()
  """
  @spec valid?(binary, binary) :: boolean
  def valid?(token, secret) when is_binary(token) and is_binary(secret) do
    case HTTPoison.post(
           "https://challenges.cloudflare.com/turnstile/v0/siteverify",
           "response=#{token}&secret=#{secret}",
           [{"Content-Type", "application/x-www-form-urlencoded"}]
         ) do
      {:ok, response} ->
        Jason.decode!(response.body)["success"]

      {:error, _} ->
        false
    end
  end
end
