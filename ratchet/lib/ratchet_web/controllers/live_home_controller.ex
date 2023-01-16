defmodule RatchetWeb.LiveHomeController do
  use RatchetWeb, :live_view
  # use RatchetWeb, :controller

  def mount(_params, %{}, socket) do
    this_node = node()
    nodes = Node.list() |> Kernel.++([this_node]) |> Enum.map(&Atom.to_string/1)

    new_socket = socket |> assign(:nodes, nodes) |> assign(:this_node, this_node)
    {:ok, new_socket}
  end

  # def home(conn, _params) do
  #   # The home page is often custom made,
  #   # so skip the default app layout.
  #   render(conn, :home, layout: false)
  # end
end
