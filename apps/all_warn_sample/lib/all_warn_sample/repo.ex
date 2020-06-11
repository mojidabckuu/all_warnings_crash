defmodule AllWarnSample.Repo do
  use Ecto.Repo,
    otp_app: :all_warn_sample,
    adapter: Ecto.Adapters.Postgres
end
