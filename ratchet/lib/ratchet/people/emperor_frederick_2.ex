defmodule Ratchet.People.EmperorFrederick2 do
  @moduledoc """
  The emperor hosting Leonardo Bigollo Pisano
  """

  use GenServer

  alias Ratchet.Others

  require Logger

  # def name, do: {:via, Registry, {PeopleRegistry, __MODULE__}}
  def name, do: __MODULE__

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: name())
  end

  def get_fibonacci(n),
    do: GenServer.call(name(), {:ask, :emperor_frederick_2, n})

  @impl true
  def init(_) do
    {:ok, nil}
  end

  @impl true
  def handle_call({:ask, :emperor_frederick_2, n}, _from, _) do
    res = GenServer.call(some_dynamic_dispatching_confusing_magic(), {:ask, :john_of_palermo, n})
    {:reply, res, nil}
  end

  defp some_dynamic_dispatching_confusing_magic() do
    case Others.other_node() do
      :error ->
        Logger.info("Asking local JohnOfPalermo")
        Ratchet.People.JohnOfPalermo

      nodename ->
        Logger.info("Asking JohnOfPalermo on #{inspect(nodename)}")
        {Ratchet.People.JohnOfPalermo, nodename}
    end
  end
end
