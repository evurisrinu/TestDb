require 'test_helper'

class TwentyeightsControllerTest < ActionController::TestCase
  setup do
    @twentyeight = twentyeights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentyeights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentyeight" do
    assert_difference('Twentyeight.count') do
      post :create, twentyeight: { name: @twentyeight.name }
    end

    assert_redirected_to twentyeight_path(assigns(:twentyeight))
  end

  test "should show twentyeight" do
    get :show, id: @twentyeight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentyeight
    assert_response :success
  end

  test "should update twentyeight" do
    patch :update, id: @twentyeight, twentyeight: { name: @twentyeight.name }
    assert_redirected_to twentyeight_path(assigns(:twentyeight))
  end

  test "should destroy twentyeight" do
    assert_difference('Twentyeight.count', -1) do
      delete :destroy, id: @twentyeight
    end

    assert_redirected_to twentyeights_path
  end
end
