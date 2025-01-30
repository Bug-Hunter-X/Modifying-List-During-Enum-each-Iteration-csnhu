# Elixir List Modification During Enum.each

This example demonstrates a common mistake when attempting to modify a list while iterating using `Enum.each`.  In Elixir, lists are immutable.  The `List.delete` function creates a *new* list, leaving the original list unchanged within the loop.  This leads to unexpected behavior.

The solution demonstrates the correct approach using `Enum.filter` or a recursive function to create a new list without modifying the original during iteration.
