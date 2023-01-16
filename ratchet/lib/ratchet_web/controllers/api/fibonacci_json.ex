defmodule RatchetWeb.Api.FibonacciJSON do
  def get(%{result: results, time: time}) do
    %{
      result: results,
      time: time
    }
  end
end
