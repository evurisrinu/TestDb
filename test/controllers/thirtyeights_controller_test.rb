require 'test_helper'

class ThirtyeightsControllerTest < ActionController::TestCase
  setup do
    @thirtyeight = thirtyeights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtyeights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtyeight" do
    assert_difference('Thirtyeight.count') do
      post :create, thirtyeight: { name: @thirtyeight.name }
    end

    assert_redirected_to thirtyeight_path(assigns(:thirtyeight))
  end

  test "should show thirtyeight" do
    get :show, id: @thirtyeight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtyeight
    assert_response :success
  end

  test "should update thirtyeight" do
    patch :update, id: @thirtyeight, thirtyeight: { name: @thirtyeight.name }
    assert_redirected_to thirtyeight_path(assigns(:thirtyeight))
  end

  test "should destroy thirtyeight" do
    assert_difference('Thirtyeight.count', -1) do
      delete :destroy, id: @thirtyeight
    end

    assert_redirected_to thirtyeights_path
  end
end
