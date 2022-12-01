class UserMailer < ApplicationMailer
  def welcome(user_id)
    @user = User.find(user_id)
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to my awesome site')
  end

  def birthday(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: "Feliz aniversário, #{@user.email}")
  end
end
