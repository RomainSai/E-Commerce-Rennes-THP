class UserMailer < ApplicationMailer

require 'dotenv'
Dotenv.load

  def account_activation(user)
    @greeting = "Salut"
    @user = user
    mail to: user.email, subject: "Activation de votre compte"
  end


  def password_reset
    @greeting = "Salut"

    mail to: "to@example.org"
  end

   def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Bienvenue à toi moussaillon")
  end

  def new_order
    puts params.inspect
    #user = User.find(params[:id])
    #order = Order.find(params[:id])
    @user = User.find(3)
    @order = Order.find(1)
    puts @user
    puts @order
    mail(to: @user.email, subject: "Détail de votre commande #{@order.id}")
  end

  def new_order_admin

  end

  def test_email
    mail(to:@user, subject: "test")
  end

end
