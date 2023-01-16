defmodule RatchetWeb.Api.FibonacciController do
  use RatchetWeb, :controller

  def get(%{query_params: %{"n" => n}} = conn, _params) do
    %{result: result, time: time} = n |> String.to_integer() |> Ratchet.get_fibonacci()
    render(conn, :get, result: result, time: time)
  end
end
