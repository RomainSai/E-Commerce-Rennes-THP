class OrderMailer < ApplicationMailer

require 'dotenv'
Dotenv.load

  def new_order(user, order)
    @user = user
    @order = order
    puts params.inspect
    #attachments['filename.jpg'] = File.read("#{Rails.root}/app/assets/images/#{@order.items}")
    p '-' * 20 + 'new_order mailer' + '-' * 20
    mail(
      to: @user.email, 
      subject: "Détail de votre commande #{@order.id}",
      )
  end

  def new_order_admin(order)
    puts params.inspect
    admin = "thprennes@gmail.com"
    p '-' * 20 + 'new_order_admin mailer' + '-' * 20
    @order = order
    mail(to: admin, subject: "Félicitations, nouvelle commande numéro #{@order.id}")
  end
  
end