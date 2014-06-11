require 'test_helper'

class ThirtiesControllerTest < ActionController::TestCase
  setup do
    @thirty = thirties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirty" do
    assert_difference('Thirty.count') do
      post :create, thirty: { name: @thirty.name }
    end

    assert_redirected_to thirty_path(assigns(:thirty))
  end

  test "should show thirty" do
    get :show, id: @thirty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirty
    assert_response :success
  end

  test "should update thirty" do
    patch :update, id: @thirty, thirty: { name: @thirty.name }
    assert_redirected_to thirty_path(assigns(:thirty))
  end

  test "should destroy thirty" do
    assert_difference('Thirty.count', -1) do
      delete :destroy, id: @thirty
    end

    assert_redirected_to thirties_path
  end
end
