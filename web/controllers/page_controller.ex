defmodule Benchmarker2.PageController do
  use Benchmarker2.Web, :controller

  def index(conn, %{"title" => title}) do
    render conn, "index.html", title: title, members: [
      %{name: "Chris McCord"},
      %{name: "Matt Sears"},
      %{name: "David Stump"},
      %{name: "Ricardo Thompson"}
    ]
  end
end
