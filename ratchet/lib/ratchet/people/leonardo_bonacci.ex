defmodule Ratchet.People.LeonardoBonacci do
  @moduledoc """
  Oh, who remembered this was another one of his names?
  """

  use GenServer

  alias Ratchet.Math.Fibonacci

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
  def handle_call({:ask, :leonardo_bonacci, n}, _from, _) do
    res = Fibonacci.nth_fibonacci_number(n)
    {:reply, res, nil}
  end
end
