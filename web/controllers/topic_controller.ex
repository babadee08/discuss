defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  def new(conn, params) do
    render conn, "index.html"
  end
end