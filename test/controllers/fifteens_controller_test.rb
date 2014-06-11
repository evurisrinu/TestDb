require 'test_helper'

class FifteensControllerTest < ActionController::TestCase
  setup do
    @fifteen = fifteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fifteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fifteen" do
    assert_difference('Fifteen.count') do
      post :create, fifteen: { name: @fifteen.name }
    end

    assert_redirected_to fifteen_path(assigns(:fifteen))
  end

  test "should show fifteen" do
    get :show, id: @fifteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fifteen
    assert_response :success
  end

  test "should update fifteen" do
    patch :update, id: @fifteen, fifteen: { name: @fifteen.name }
    assert_redirected_to fifteen_path(assigns(:fifteen))
  end

  test "should destroy fifteen" do
    assert_difference('Fifteen.count', -1) do
      delete :destroy, id: @fifteen
    end

    assert_redirected_to fifteens_path
  end
end
