# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :onlinechat,
  ecto_repos: [Onlinechat.Repo]

# Configures the endpoint
config :onlinechat, Onlinechat.Endpoint,
  # url: [host: "localhost"],
  load_from_system_env: true,
  url: [scheme: "https", host: "demoelixirchat.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json",
  render_errors: [view: Onlinechat.ErrorView, accepts: ~w(html json)],
  secret_key_base: "jQkOXBAgwiAzupA0yqgKydLPbF2OcsiUJKKuWtGGiLj1ZhBd0/B39uNZWZgXrPgO",
  pubsub: [name: Onlinechat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
