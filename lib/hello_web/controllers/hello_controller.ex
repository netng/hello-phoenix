defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]
  plug :masbro_plug

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    # text(conn, "From messenger #{messenger}")
    # json(conn, %{data: %{id: messenger}})
    # render(conn, :show, messenger: messenger)
    # conn
    # |> assign(:messenger, messenger)
    # |> assign(:receiver, "Nan")
    # |> render(:show)
    render(
      conn,
      :show,
      messenger: messenger,
      receiver: "nandang",
      class: "text-brand"
    )
  end

  defp masbro_plug(conn, _) do
    IO.puts("Hello mas bro plug")
    conn
  end
end
