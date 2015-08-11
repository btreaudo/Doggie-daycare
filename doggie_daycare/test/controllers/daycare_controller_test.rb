require 'test_helper'

class DaycareControllerTest < ActionController::TestCase
  test "should get daycare" do
    get :daycare
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
