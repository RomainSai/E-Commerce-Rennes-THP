class ChargesController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => user.id,
      :amount      => @order.amount_cents,
      :description => "Paiement pour l'image #{@order.item_sku}",
      :currency    => @order.amount_cents
    )

    @order.update(charge: charge.to_json, state: 'paid')
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_charge_path
  end

private
  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:id])
  end

end
