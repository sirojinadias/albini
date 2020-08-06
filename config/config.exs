# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :albini,
  ecto_repos: [Albini.Repo]

# Configures the endpoint
config :albini, AlbiniWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B6elrsLQ41sGKwNuG2Yzx+CripW9i+bZp9W0bt2jrGe3U5ybJRYUdXJwKWVq1E00",
  render_errors: [view: AlbiniWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Albini.PubSub,
  live_view: [signing_salt: "7IMc+kL2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
