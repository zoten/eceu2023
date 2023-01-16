defmodule Ratchet.Math.Factorial do
  @moduledoc """
  Algorithms to calculate the factorial of a number
  """

  @spec factorial(non_neg_integer()) :: non_neg_integer()
  def factorial(0), do: 1
  def factorial(num) when num > 0, do: 1..num |> Enum.reduce(1, fn num, acc -> acc * num end)

  @spec old_factorial(non_neg_integer()) :: non_neg_integer()
  def old_factorial(0), do: 1
  def old_factorial(num) when num > 0, do: num * old_factorial(num - 1)
end
