class OrdersController < ApplicationController

  def create
    @cart = Cart.find_by(user_id: current_user.id)
    @order = Order.create(user_id: current_user.id)

    @cart.items.each do |item|
      @order.items << item
      item.destroy
    end

    @order.items.each do |item|
      @order.total_cents += item.price
    end

  end

  def show

  end

end
