import Config

config :atoms_please, AtomsPlease.Repo,
  database: "atoms_please_repo",
  username: "postgres",
  password: "postgres",
  hostname: "127.0.0.1"

config :atoms_please,
  ecto_repos: [AtomsPlease.Repo]

config :postgrex, :json_library, AtomsPlease.Repo.JSON
