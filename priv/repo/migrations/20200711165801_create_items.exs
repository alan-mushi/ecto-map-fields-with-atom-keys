defmodule AtomsPlease.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :extra, :map
    end
  end
end
