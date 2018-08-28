class SendEmail
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def send_email
      UserMailer.test_email(@user).deliver
  end

  def perform
    send_email
  end

end