require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(username: "EdgarNegron", email: "edgarnegronrabell@gmail.com", password: "7bas9r3hjs9!")
	end

	test "user should be valid" do
		assert @user.valid?
	end

	test "name, email, password should be present" do
		@user.username = " "
		@user.email = " "
		@user.password = " "
		assert_not @user.username.valid?
		assert_not @user.email.valid?
		assert_not @user.password.valid?

	end
end