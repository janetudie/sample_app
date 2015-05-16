class UserMailer < ApplicationMailer
	default from: 'no-reply@example.com'

	def welcome_email(user)
		@user = user
    @url  = login_path
    mail(to: @user.email, subject: 'Welcome to the sample_app!')
	end

end
