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

    def each([], _function), do: nil
    def each([head | tail], function) do
      function.(head)
      each(tail, function)
    end

    def map([], _function), do: []
    def map([head | tail], function) do
      [function.(head) | map(tail, function)]
    end

    def reduce([], acc, _function), do: acc
    def reduce([head | tail], acc, function) do
      reduce(tail, function.(head, acc), function)
    end

    def filter([], _function), do: []
    def filter([head | tail], function) do
      if function.(head) do
        [head | filter(tail, function)]
      else
        filter(tail, function)
      end
    end
end
