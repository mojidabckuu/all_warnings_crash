# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :all_warn_sample,
  ecto_repos: [AllWarnSample.Repo]

config :all_warn_sample_web,
  ecto_repos: [AllWarnSample.Repo],
  generators: [context_app: :all_warn_sample]

# Configures the endpoint
config :all_warn_sample_web, AllWarnSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JTDlbVgHqGQEJ8ETj65v6+lZYytAp7MeQaJyjFGOw53yNIQzCut3rIwNmqmzghsA",
  render_errors: [view: AllWarnSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AllWarnSample.PubSub,
  live_view: [signing_salt: "bY5JG/2P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
