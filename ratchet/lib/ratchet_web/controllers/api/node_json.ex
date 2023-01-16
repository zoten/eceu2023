defmodule RatchetWeb.Api.NodeJSON do
  def get(%{node: node, connected: connected_nodes, known: known_nodes}) do
    %{node: node, connected: connected_nodes, known: known_nodes}
  end
end
