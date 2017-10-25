require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

	def setup
	    @user             = users(:archer)
	    @unactivated_user = users(:lana)
    end

    test "Should not show unactivated user" do
    	log_in_as (@user)
    	get user_path(@unactivated_user)
    	assert_redirected_to root_url
	end
end