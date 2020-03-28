use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :onlinechat, Onlinechat.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :onlinechat, Onlinechat.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "onlinechat_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
