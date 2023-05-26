defmodule MyList do
  def max([]), do: []
  def max([first]), do: first
  def max([first, second | rest]) do
    if first > second do
      max([first | rest])
    else
      max([second | rest])
    end
  end


  def min([]), do: []
  def min([first]), do: first
  def min([first, second | rest]) do
    if (first < second) do
      min([first | rest])
    else
      min([second | rest])
    end
  end
end
