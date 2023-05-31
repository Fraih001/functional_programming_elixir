defmodule GeneralStore do
  import Enchanter

  def filter_items([], true), do: []
  def filter_items([], false), do: []

  def filter_items([item = %{magic: magic} | items], true) do
    if magic == true do
      [item | filter_items(items, true)]
    else
      filter_items(items, true)
    end
  end

  def filter_items([item = %{magic: magic} | items], false) do
    if magic == false do
      [item | filter_items(items, false)]
    else
      filter_items(items, false)
    end
  end
end
