import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_hello, PhoenixHelloWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "thguc78CO2qcrJ5832M/w62L6RVGxXkx0O1aJCc9eyzkNu5gzbEHdDNmLju+hZrH",
  server: false

# In test we don't send emails.
config :phoenix_hello, PhoenixHello.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
