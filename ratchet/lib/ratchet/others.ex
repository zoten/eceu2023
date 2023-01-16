defmodule Ratchet.Others do
  @moduledoc """
  Utilities to work with other nodes
  """

  @spec other_node :: atom()
  def other_node do
    # there's only one other node here, be patient for this demo :)
    case Node.list() do
      [other] -> other
      _ -> :error
    end
  end
end
