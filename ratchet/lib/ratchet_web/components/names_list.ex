defmodule NamesList do
  use Phoenix.Component

  @doc """
  assigns

    - names a list of names to show
  """
  def names(assigns) do
    ~H"""
    <div class="z-10 w-full bg-white border rounded-lg p-4">
      <div
        :for={name <- @names}
        class="w-full bg-gray-100 border rounded-lg flex justify-between items-center px-4 py-2 mb-4"
      >
        <div>
          <p class="font-semibold text-xl"><%= name %></p>
        </div>
      </div>
    </div>
    """
  end
end
