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
    @user = user 
    mail(to: @user.email, subject: "Détail de votre commande")
  end

  def new_order_admin

  end

  def test_email
    mail(to:@user, subject: "test")
  end

end
