# VeliTurnstile

Cloudflare Turnstile validator module for [Veli](https://github.com/cart96/veli).

## Installation

the package can be installed by adding `veli_turnstile` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:veli_turnstile, "~> 0.1.0"}
  ]
end
```

## Documentation

Documentation is avaible at [HexDocs](https://hexdocs.pm/veli_turnstile).

## Example

First, you need to add validator to Veli:

```ex
Veli.add_validator(:turnstile, VeliTurnstile)
```

Now you can use the validator:

```ex
rule = [type: :string, turnstile: "secret key"]
Veli.valid("turnstile response", rule) |> Veli.error()
```

## License

Released under the MIT License.
