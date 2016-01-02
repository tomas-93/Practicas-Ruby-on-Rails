require 'test_helper'

class TestSesionControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get close" do
    get :close
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
