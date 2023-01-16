defmodule RatchetWeb.Api.EmperorFrederick2JSON do
  def get(%{result: results, time: time}) do
    %{
      result: results,
      time: time
    }
  end
end
