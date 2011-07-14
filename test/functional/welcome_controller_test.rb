require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

end
