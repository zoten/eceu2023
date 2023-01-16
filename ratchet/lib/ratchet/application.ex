defmodule Ratchet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    topologies = [
      ratchet: [
        strategy: Cluster.Strategy.Epmd,
        # Hardcoding here because for this example I already know they will be resolvable via DNS
        config: [hosts: [:ratchet@ratchet0, :ratchet@ratchet1]]
      ]
    ]

    children = [
      # Start the Telemetry supervisor
      RatchetWeb.Telemetry,
      # Cluster supervisor
      {Cluster.Supervisor, [topologies, [name: Ratchet.ClusterSupervisor]]},
      {Registry, keys: :unique, name: PeopleRegistry},
      # Some people
      Ratchet.People.EmperorFrederick2,
      Ratchet.People.JohnOfPalermo,
      Ratchet.People.LeonardoBonacci,
      # Start the PubSub system
      {Phoenix.PubSub, name: Ratchet.PubSub},
      # Start the Endpoint (http/https)
      RatchetWeb.Endpoint
      # Start a worker by calling: Ratchet.Worker.start_link(arg)
      # {Ratchet.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ratchet.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RatchetWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
