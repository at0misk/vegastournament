class UserMailer < ApplicationMailer
  default from: 'archertravelmailer@gmail.com'
 
  def reg_email(user)
    @user = user
    mail(to: 'laurenwade@archertravel.com', subject: 'Sin City 6v6 Registration')
  end
end
