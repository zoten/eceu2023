defmodule RatchetWeb.Api.RestartController do
  use RatchetWeb, :controller

  @shutdown_timer 500

  @dialyzer {:nowarn_function, post: 2}
  def post(conn, _params) do
    Task.start(fn ->
      :timer.sleep(@shutdown_timer)
      System.halt(0)
    end)

    render(conn, :post, restart_in: @shutdown_timer)
  end
end
