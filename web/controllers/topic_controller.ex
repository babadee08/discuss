defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, params) do
    #struct = %Discuss.Topic{}
    #params = %{}
    #changeset = Discuss.Topic.changeset(struct, params)

    # Aliased version of this ^^^^^
    changeset = Topic.changeset(%Topic{}, %{})
  end
end