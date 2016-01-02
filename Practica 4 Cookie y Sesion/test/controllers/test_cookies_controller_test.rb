require 'test_helper'

class TestCookiesControllerTest < ActionController::TestCase
  test "should get identify" do
    get :identify
    assert_response :success
  end

end
