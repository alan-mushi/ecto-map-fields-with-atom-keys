defmodule AtomsPlease.Repo do
  use Ecto.Repo,
    otp_app: :atoms_please,
    adapter: Ecto.Adapters.Postgres
end
