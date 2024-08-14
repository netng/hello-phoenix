defmodule Hello.ShoppingCart.Cart do
  alias Hello.ShoppingCart.CartItem
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do
    field :user_uuid, Ecto.UUID

    has_many :items, CartItem

    timestamps()
  end

  @doc false
  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [:user_uuid])
    |> validate_required([:user_uuid])
    |> unique_constraint(:user_uuid)
  end
end
