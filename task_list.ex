defmodule TaskList do
  import File, only: [write: 3, read: 1]
  @file_name "task_list.md"

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    File.write(@file_name, task, [:append])
  end

  def show_list do
    File.read(@file.name)
  end
end
