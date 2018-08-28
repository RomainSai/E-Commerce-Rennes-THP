class OrdersController < ApplicationController

  def create
    @user = User.find(params[:id])
    item = Item.find(params[:item_id])
    order = Order.create!(item_sku: item.sku, amount: item.price_cents, user_id: @user.id)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

end
