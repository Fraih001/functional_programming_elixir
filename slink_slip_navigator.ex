defmodule SlinkSkipNavigator do
  def dir?(dir) do
    {:ok, %{type: type}} = File.lstat(dir)
    type == :directory
  end
end
