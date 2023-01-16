defmodule Ratchet.Math.Fibonacci do
  @moduledoc """
  Some implementations of the Fibonacci famous serie
  """

  # TODO: swap this function with a better one!
  @spec nth_fibonacci_number(n :: non_neg_integer()) :: non_neg_integer()
  def nth_fibonacci_number(n), do: old_fibonacci(n)

  @spec old_fibonacci(non_neg_integer()) :: pos_integer()
  def old_fibonacci(0), do: 0
  def old_fibonacci(1), do: 1
  def old_fibonacci(n), do: old_fibonacci(n - 1) + old_fibonacci(n - 2)

  @spec tail_fibonacci(non_neg_integer()) :: list(pos_integer())
  def tail_fibonacci(0), do: 0
  def tail_fibonacci(n), do: do_tail_fibonacci([1, 1], n)
  defp do_tail_fibonacci(list, 2), do: Enum.reverse(list)

  defp do_tail_fibonacci(list, n) do
    [first, second | _] = list
    do_tail_fibonacci([first + second | list], n - 1)
  end
end
