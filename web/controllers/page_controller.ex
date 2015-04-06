defmodule TodoBackend.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def create(conn, _params) do
    render conn, "index.html"
  end

  def delete(conn, _params) do
    render conn, "index.html"
  end
end
