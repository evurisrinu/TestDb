require 'test_helper'

class SevensControllerTest < ActionController::TestCase
  setup do
    @seven = sevens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sevens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seven" do
    assert_difference('Seven.count') do
      post :create, seven: { name: @seven.name }
    end

    assert_redirected_to seven_path(assigns(:seven))
  end

  test "should show seven" do
    get :show, id: @seven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seven
    assert_response :success
  end

  test "should update seven" do
    patch :update, id: @seven, seven: { name: @seven.name }
    assert_redirected_to seven_path(assigns(:seven))
  end

  test "should destroy seven" do
    assert_difference('Seven.count', -1) do
      delete :destroy, id: @seven
    end

    assert_redirected_to sevens_path
  end
end
