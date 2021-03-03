class UserMailer < ActionMailer::Base
  default from: "devkaterakhi@gmail.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject:"Sign up Confirmation"
  end
end
