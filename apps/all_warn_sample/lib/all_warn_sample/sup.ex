defmodule AllWarnSample.Supervisor do
  @moduledoc """
  Supervisor for interfaces.
  """
  use Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      worker(AllWarnSample.Worker, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
