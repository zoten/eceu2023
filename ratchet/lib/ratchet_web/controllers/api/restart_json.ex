defmodule RatchetWeb.Api.RestartJSON do
  def post(%{restart_in: results}) do
    %{
      restart_in: results
    }
  end
end
