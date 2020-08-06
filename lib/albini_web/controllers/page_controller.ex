defmodule AlbiniWeb.PageController do
  use AlbiniWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
