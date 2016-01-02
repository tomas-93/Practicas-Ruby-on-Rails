require 'test_helper'

class FilesControllerTest < ActionController::TestCase
  test "should get up_file" do
    get :up_file
    assert_response :success
  end

  test "should get list_file" do
    get :list_file
    assert_response :success
  end

  test "should get delete_file" do
    get :delete_file
    assert_response :success
  end

  test "should get save_file" do
    get :save_file
    assert_response :success
  end

end
