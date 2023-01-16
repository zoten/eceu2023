defmodule RatchetWeb.Api.NumberInfoJSON do
  def get(%{results: results, time: time}) do
    %{
      results: results,
      time: time
    }
  end
end
