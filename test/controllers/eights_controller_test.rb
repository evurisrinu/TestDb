require 'test_helper'

class EightsControllerTest < ActionController::TestCase
  setup do
    @eight = eights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eight" do
    assert_difference('Eight.count') do
      post :create, eight: { name: @eight.name }
    end

    assert_redirected_to eight_path(assigns(:eight))
  end

  test "should show eight" do
    get :show, id: @eight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eight
    assert_response :success
  end

  test "should update eight" do
    patch :update, id: @eight, eight: { name: @eight.name }
    assert_redirected_to eight_path(assigns(:eight))
  end

  test "should destroy eight" do
    assert_difference('Eight.count', -1) do
      delete :destroy, id: @eight
    end

    assert_redirected_to eights_path
  end
end
