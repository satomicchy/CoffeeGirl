require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get thanks" do
    get :thanks
    assert_response :success
  end

end
