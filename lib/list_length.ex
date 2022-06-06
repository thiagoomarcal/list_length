defmodule ListLength do
  def call(list), do: get_list_length(list, 0)

  defp get_list_length([], acc), do: acc

  defp get_list_length([_head | tail], acc) do
    acc = acc + 1

    if length(tail) == 0 do
      get_list_length(tail, acc)
    end

    get_list_length(tail, acc)
  end
end
