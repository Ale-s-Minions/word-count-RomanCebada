defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    |> String.split()
    |> Enum.reduce sentence, %{}, fn word, acc ->
        word = String.downcase word
        Map.update acc, word, 1, &(&1 + 1)
    end
  end
end
