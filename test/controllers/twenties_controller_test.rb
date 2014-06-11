require 'test_helper'

class TwentiesControllerTest < ActionController::TestCase
  setup do
    @twenty = twenties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twenties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twenty" do
    assert_difference('Twenty.count') do
      post :create, twenty: { name: @twenty.name }
    end

    assert_redirected_to twenty_path(assigns(:twenty))
  end

  test "should show twenty" do
    get :show, id: @twenty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twenty
    assert_response :success
  end

  test "should update twenty" do
    patch :update, id: @twenty, twenty: { name: @twenty.name }
    assert_redirected_to twenty_path(assigns(:twenty))
  end

  test "should destroy twenty" do
    assert_difference('Twenty.count', -1) do
      delete :destroy, id: @twenty
    end

    assert_redirected_to twenties_path
  end
end
