defmodule AllWarnSampleWeb.PageController do
  use AllWarnSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
