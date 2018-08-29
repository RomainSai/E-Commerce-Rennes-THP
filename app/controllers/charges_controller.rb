class ChargesController < ApplicationController
  require 'dotenv'
  Dotenv.load

  require "stripe"
Stripe.api_key = "sk_test_hbNUl1AqNieYvIz49KzF257h"

Stripe::Customer.create(
  :description => "Customer for jenny.rosen@example.com",
  :source => "tok_mastercard" # obtained with Stripe.js
)
  @amount = @cart_total.to_i

  def new
  end

  def create
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    puts '------------CREATE STRIPE----------'
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "Paiement pour l'image",
      :currency    => 'usd'
    )
    puts '------------CREATE lolololo----------'

  rescue Stripe::CardError => e
    flash[:error] = 'problème de carte'
    redirect_to root_path
  end

end
