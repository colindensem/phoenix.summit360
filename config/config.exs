# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :summit360_www, Summit360Www.Endpoint,
  url: [host: "localhost"],
  server: true,
  root: Path.dirname(__DIR__),
  secret_key_base: "d1Ip7k62pZTEO62nkUabmR6RqkrqPhmw/ZorvvxGgeWfQPlK6W67ykjgIsnlqrDO",
  debug_errors: false,
  pubsub: [name: Summit360Www.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
