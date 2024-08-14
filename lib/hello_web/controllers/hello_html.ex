defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html

  embed_templates "hello_html/*"

  attr :messenger, :string, required: true
  attr :receiver, :string, required: true

  def greet(assigns) do
    IO.inspect(assigns, pretty: true)

    ~H"""
    <h2>Messenger: <%= @messenger %>!</h2>
    <h2>Receiver: <%= @receiver %>!</h2>
    """
  end
end
