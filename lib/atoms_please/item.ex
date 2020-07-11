defmodule AtomsPlease.Item do
  use Ecto.Schema

  schema "items" do
    field :name, :string
    field :extra, :map, default: %{}
  end
end
