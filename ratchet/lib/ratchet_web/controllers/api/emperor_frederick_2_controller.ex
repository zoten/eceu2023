defmodule RatchetWeb.Api.EmperorFrederick2Controller do
  use RatchetWeb, :controller

  alias Ratchet.People.EmperorFrederick2

  def get(%{query_params: %{"n" => n}} = conn, _params) do
    {time, result} =
      :timer.tc(fn ->
        n |> String.to_integer() |> EmperorFrederick2.get_fibonacci()
      end)

    render(conn, :get, result: result, time: time)
  end
end
