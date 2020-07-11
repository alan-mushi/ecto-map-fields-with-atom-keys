defmodule AtomsPleaseTest do
  use ExUnit.Case
  require Logger

  test "insert and retrieve an item" do
    item = %AtomsPlease.Item{
      name: "abcd",
      extra: %{
        thingy_type: "other",
        img: "https://xkcd.com/2240/"
      }
    }

    Logger.info("Before insertion:")
    IO.inspect(item)

    {:ok, _} = AtomsPlease.Repo.insert item

    fetched_item = AtomsPlease.Item
                   |> Ecto.Query.first
                   |> AtomsPlease.Repo.one

    Logger.info("After fetch:")
    IO.inspect(fetched_item)

    assert Map.get(fetched_item.extra, :thingy_type, nil) == "other"
  end
end
