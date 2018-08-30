class ChargesController < ApplicationController
  require 'dotenv'
  require "stripe"
  Dotenv.load

  attr_accessor :user, :order


  def initialize
    @user = current_user
    @order = ''
    puts @user
  end


Stripe::Customer.create(
  :description => "Customer for XXXXXX",
  :source => "tok_mastercard" # obtained with Stripe.js
)

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
      :amount      => 222,
      :description => "Paiement pour l'image",
      :currency    => "eur"
    )
    puts '------------FIN CREATE STRIPE----------'

   # OrderMailer.new_order.deliver_now

  rescue Stripe::CardError => e
    flash[:error] = 'problème de carte'
    redirect_to root_path
  end

end
