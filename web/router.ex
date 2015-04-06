defmodule TodoBackend.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html json)
    plug :fetch_session
    plug :fetch_flash
    # plug :protect_from_forgery
    plug CORSPlug
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", TodoBackend do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/", PageController, :create
    options "/", PageController, :index
    delete "/", PageController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", TodoBackend do
  #   pipe_through :api
  # end
end
