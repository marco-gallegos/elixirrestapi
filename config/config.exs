# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :restapi,
  ecto_repos: [Restapi.Repo]

# Configures the endpoint
config :restapi, RestapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Bkb1juE2fth8sythIltxlKefWQ4g+xSVZFliFJYHphYGoch7i2ldb/GijTZrZkXp",
  render_errors: [view: RestapiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Restapi.PubSub,
  live_view: [signing_salt: "iGcAu82W"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
