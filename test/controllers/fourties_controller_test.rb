require 'test_helper'

class FourtiesControllerTest < ActionController::TestCase
  setup do
    @fourty = fourties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourty" do
    assert_difference('Fourty.count') do
      post :create, fourty: { name: @fourty.name }
    end

    assert_redirected_to fourty_path(assigns(:fourty))
  end

  test "should show fourty" do
    get :show, id: @fourty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourty
    assert_response :success
  end

  test "should update fourty" do
    patch :update, id: @fourty, fourty: { name: @fourty.name }
    assert_redirected_to fourty_path(assigns(:fourty))
  end

  test "should destroy fourty" do
    assert_difference('Fourty.count', -1) do
      delete :destroy, id: @fourty
    end

    assert_redirected_to fourties_path
  end
end
