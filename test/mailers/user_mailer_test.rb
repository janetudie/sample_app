require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

	def setup
		@user = users(:michael)
	end


  test "send welcome email" do
    # Send the email, then test that it got sent
    email = UserMailer.welcome_email(@user).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
 
    # Test the subject of the sent email contains what we expect it to
    assert_equal ['no-reply@example.com'], email.from
   	assert_equal [@user.email], email.to
    assert_equal 'Welcome to the sample_app!', email.subject
  end



end
