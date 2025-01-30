```elixir
list = [1, 2, 3, 4, 5]

# Correct approach using Enum.filter to create a new list
newList = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(newList) # Output: [1, 2, 4, 5]
IO.inspect(list) # Output: [1, 2, 3, 4, 5] (original unchanged)

# Alternative approach using recursion (for more complex scenarios)

defmodule ListModifier do
  def remove_element(list, element) do
    remove_element(list, element, [])
  end

  defp remove_element([], _element, acc), do: Enum.reverse(acc)
  defp remove_element([head | tail], element, acc) when head == element, do: remove_element(tail, element, acc)
  defp remove_element([head | tail], element, acc), do: remove_element(tail, element, [head | acc])
end

newList2 = ListModifier.remove_element(list, 3)
IO.inspect(newList2) # Output: [1, 2, 4, 5]
IO.inspect(list) # Output: [1, 2, 3, 4, 5] (original unchanged)
```