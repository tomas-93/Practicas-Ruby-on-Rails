require 'test_helper'

class FromsControllerTest < ActionController::TestCase
  test "should get action_post" do
    get :action_post
    assert_response :success
  end

  test "should get action_get" do
    get :action_get
    assert_response :success
  end

end
