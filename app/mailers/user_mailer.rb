class UserMailer < ApplicationMailer
  default from: 'contact@blablasport.fr'

  def welcome_email
    @user = params[:user]
    @url  = 'http://www.blablasport.fr/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue dans la communauté BlablaSport !')
  end
end
