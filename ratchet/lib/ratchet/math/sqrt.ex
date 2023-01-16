defmodule Ratchet.Math.Sqrt do
  @moduledoc """
  Algorithms to calculate the sqrt of a number
  Wrapper for system's sqrt because this is a demo application :)
  """

  @spec sqrt(non_neg_integer()) :: float()
  def sqrt(num), do: :math.sqrt(num)
end
