require 'test_helper'

class TalksControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
