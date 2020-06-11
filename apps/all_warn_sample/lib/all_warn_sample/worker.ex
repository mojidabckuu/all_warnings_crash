defmodule AllWarnSample.Worker do
  use GenServer

  def init(opts) do
    {:ok, opts}
  end

  def start_link(opts \\ []) do
    name = Keyword.get(opts, :name, __MODULE__)
    GenServer.start_link(__MODULE__, opts, name: name)
  end
end
