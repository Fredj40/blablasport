class UserMailer < ApplicationMailer
  after_create :send_welcome_email

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Bonjour"
    user = @user
    mail to: user.email
    mail to: "to@example.org"
  end

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
