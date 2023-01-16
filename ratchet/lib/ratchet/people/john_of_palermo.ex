defmodule Ratchet.People.JohnOfPalermo do
  @moduledoc """
  A member of Frederick's court asking questions to Leonardo of Pisa
  """

  use GenServer

  alias Ratchet.Others

  require Logger

  # def name, do: {:via, Registry, {PeopleRegistry, __MODULE__}}
  def name, do: __MODULE__

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: name())
  end

  @impl true
  def init(_) do
    {:ok, nil}
  end

  @impl true
  def handle_call({:ask, :john_of_palermo, n}, _from, _) do
    res = GenServer.call(some_dynamic_dispatching_confusing_magic(), {:ask, :leonardo_bonacci, n})
    {:reply, res, nil}
  end

  defp some_dynamic_dispatching_confusing_magic() do
    case Others.other_node() do
      :error ->
        Logger.info("Asking local LeonardoBonacci")
        Ratcet.People.LeonardoBonacci

      nodename ->
        Logger.info("Asking LeonardoBonacci on #{inspect(nodename)}")
        {Ratchet.People.LeonardoBonacci, nodename}
    end
  end
end
