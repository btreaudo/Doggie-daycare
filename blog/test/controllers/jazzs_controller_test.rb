require 'test_helper'

class JazzsControllerTest < ActionController::TestCase
  setup do
    @jazz = jazzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jazzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jazz" do
    assert_difference('Jazz.count') do
      post :create, jazz: { content: @jazz.content, title: @jazz.title }
    end

    assert_redirected_to jazz_path(assigns(:jazz))
  end

  test "should show jazz" do
    get :show, id: @jazz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jazz
    assert_response :success
  end

  test "should update jazz" do
    patch :update, id: @jazz, jazz: { content: @jazz.content, title: @jazz.title }
    assert_redirected_to jazz_path(assigns(:jazz))
  end

  test "should destroy jazz" do
    assert_difference('Jazz.count', -1) do
      delete :destroy, id: @jazz
    end

    assert_redirected_to jazzs_path
  end
end
