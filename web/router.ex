defmodule PhoenixCrud.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :phoenix_crud

  scope alias: PhoenixCrud do
    get "/", WelcomeController, :index, as: :root
    get "/pages/:page", PageController, :show, as: :page
    resources "users", UserController
  end
end
