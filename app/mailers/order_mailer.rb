class OrderMailer < ApplicationMailer

require 'dotenv'
Dotenv.load

  def new_order
    puts params.inspect
    @user = user
    @order = order
    p '-' * 20 + 'new_order mailer' + '-' * 20
    puts @user
    puts @order
    mail(to: user, subject: "Détail de votre commande")
  end

  def new_order_admin
    puts params.inspect
    p '-' * 20 + 'new_order_admin mailer' + '-' * 20
    @admin = User.find_by(admin: true)
    @order = Order.params[:id]
    puts @user
    puts @order
    mail(to: @admin.email, subject: "Nouvelle commande numéro #{@order.id} de #{@order.total}")

  end
  
end