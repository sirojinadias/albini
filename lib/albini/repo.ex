defmodule Albini.Repo do
  use Ecto.Repo,
    otp_app: :albini,
    adapter: Ecto.Adapters.Postgres
end
