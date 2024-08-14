defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  plug :put_view, html: HelloWeb.PageHTML, json: HelloWeb.PageJSON

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # conn
    # |> put_status(:ok)
    # |> render(:home, layout: false)

    # redirect(conn, external: "http://google.com")
    # redirect(conn, to: ~p"/redirect_test")
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:home, layout: false)
  end

  def redirect_test(conn, _params) do
    render(conn, :home, layout: false)
  end
end
