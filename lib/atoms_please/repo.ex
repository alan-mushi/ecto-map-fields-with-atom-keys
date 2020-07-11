defmodule AtomsPlease.Repo do
  use Ecto.Repo,
    otp_app: :atoms_please,
    adapter: Ecto.Adapters.Postgres

  defmodule JSON do
    defdelegate encode!(o), to: Poison
    defdelegate encode_to_iodata!(o), to: Poison
    # Awful hack
    def decode!(o), do: Poison.decode!(o, keys: :atoms!)
  end
end
