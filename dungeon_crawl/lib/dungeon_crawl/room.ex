defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], trigger: nil

  def all, do: [
    %Room{
      description: "You found a quiet place. Looks safe for a little nap.",
      actions: [forward(), rest()],
      trigger: Triggers.Exit,
    },
    %Room{
      description: "You can see an enemy blocking your path.",
      actions: [forward()],
      trigger: Triggers.Enemy,
    },
    %Room{
      description: "You found a quiet place. Looks safe for a little nap.",
      actions: [forward(), rest()],
      trigger: Triggers.Rest,
    },
    %Room{
      description: "You found a quiet place, but there may still be enemies near.",
      actions: [forward(), rest()],
      trigger: Triggers.EnemyHidden,
    },
    %Room{
      description: "You found a quiet place, but it could be a trap!",
      actions: [forward(), search()],
      trigger: Triggers.Trap,
    },
    %Room{
      description: "You found a quiet place, let's search and see if we can find some treasure!",
      actions: [forward(), search()],
      trigger: Triggers.Treasure,
    },
  ]
end
