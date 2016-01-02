require 'test_helper'

class RedesSocialesControllerTest < ActionController::TestCase
  test "should get facebook" do
    get :facebook
    assert_response :success
  end

  test "should get twitter" do
    get :twitter
    assert_response :success
  end

  test "should get googleplus" do
    get :googleplus
    assert_response :success
  end

end
