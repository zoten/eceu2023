defmodule RatchetWeb.Api.NodeController do
  use RatchetWeb, :controller

  def get(conn, _params) do
    this_node = Node.self()
    connected_nodes = Node.list(:connected)
    known_nodes = Node.list(:known)
    render(conn, :get, node: this_node, connected: connected_nodes, known: known_nodes)
  end
end
