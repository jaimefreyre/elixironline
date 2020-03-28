defmodule Onlinechat.PageController do
  use Onlinechat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
