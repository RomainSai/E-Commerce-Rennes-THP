class ChargesController < ApplicationController
  require 'dotenv'
  require "stripe"
  Dotenv.load


Stripe::Customer.create(
  :description => "Customer for XXXXXX",
  :source => "tok_mastercard" # obtained with Stripe.js
)

  def new
  end

  def create
    user = current_user
    order = Order.where(user_id: user.id)
    order = order[-1]

    puts "-----------------------#{order.id}------------------------"
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    puts '------------CREATE STRIPE----------'
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => 222,
      :description => "Paiement pour l'image",
      :currency    => "eur"
    )
    puts '------------FIN CREATE STRIPE----------'

    OrderMailer.new_order(user, order).deliver_now
    OrderMailer.new_order_admin(order).deliver_now

  rescue Stripe::CardError => e
    flash[:error] = 'problème de carte'
    redirect_to root_path
  end

end
