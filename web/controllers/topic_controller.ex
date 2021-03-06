defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def index(conn, _params) do
    topics = Repo.all(Topic)

    render conn, "index.html", topics: topics
  end

  def new(conn, _params) do
    #struct = %Discuss.Topic{}
    #params = %{}
    #changeset = Discuss.Topic.changeset(struct, params)

    # Aliased version of this ^^^^^
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  #def create(conn, params) do
    #IO.inspect(params)
    #%{"topic" => topic} = params
  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:ok, post} -> IO.inspect(post)
      #{:error, changeset} -> IO.inspect(changeset) 
      {:error, changeset} -> 
        render conn, "new.html", changeset: changeset
    end
  end
end
