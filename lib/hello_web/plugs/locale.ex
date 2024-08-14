defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en", "fr", "de"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    IO.inspect(conn)
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    IO.inspect(conn)
    assign(conn, :locale, default)
  end
end
