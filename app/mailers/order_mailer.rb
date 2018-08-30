class OrderMailer < ApplicationMailer

require 'dotenv'
Dotenv.load

  def new_order
    puts params.inspect
    @user = current_user
    @order = Order.params[:id]
    puts @user
    puts @order
    mail(to: @user.email, subject: "Détail de votre commande #{@order.id}")
  end

  def new_order_admin

  end
  
end