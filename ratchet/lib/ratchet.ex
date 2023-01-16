defmodule Ratchet do
  @moduledoc """
  Ratchet keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias Ratchet.Math.Factorial
  alias Ratchet.Math.Fibonacci
  alias Ratchet.Math.Sqrt

  @spec get_fibonacci(num :: non_neg_integer()) :: %{
          result: non_neg_integer(),
          time: pos_integer()
        }
  def get_fibonacci(num) when is_integer(num) do
    {t0, result} = :timer.tc(fn -> Fibonacci.nth_fibonacci_number(num) end)

    %{
      result: result,
      time: t0
    }
  end

  @spec get_number_info(num :: integer()) :: %{results: map(), time: non_neg_integer()}
  def get_number_info(num) when is_integer(num) do
    {t0, results} =
      :timer.tc(fn ->
        fibonacci_result = Fibonacci.nth_fibonacci_number(num)
        factorial_result = Factorial.factorial(num)
        sqrt_result = Sqrt.sqrt(num)

        %{
          fibonacci: fibonacci_result,
          factorial: factorial_result,
          sqrt: sqrt_result
        }
      end)

    %{results: results, time: t0}
  end

  @spec stop() :: :ok | {:error, any()}
  def stop do
    Application.stop(:ratchet)
  end
end
