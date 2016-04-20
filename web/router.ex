defmodule Benchmarker2.Router do
  use Benchmarker2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
  end

  scope "/", Benchmarker2 do
    pipe_through :browser

    get "/:title", PageController, :index
  end
end
