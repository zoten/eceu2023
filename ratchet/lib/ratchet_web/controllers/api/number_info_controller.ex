defmodule RatchetWeb.Api.NumberInfoController do
  use RatchetWeb, :controller

  def get(%{query_params: %{"n" => n}} = conn, _params) do
    %{results: result, time: time} = n |> String.to_integer() |> Ratchet.get_number_info()
    render(conn, :get, results: result, time: time)
  end
end
