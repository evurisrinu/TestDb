require 'test_helper'

class TensControllerTest < ActionController::TestCase
  setup do
    @ten = tens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ten" do
    assert_difference('Ten.count') do
      post :create, ten: { name: @ten.name }
    end

    assert_redirected_to ten_path(assigns(:ten))
  end

  test "should show ten" do
    get :show, id: @ten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ten
    assert_response :success
  end

  test "should update ten" do
    patch :update, id: @ten, ten: { name: @ten.name }
    assert_redirected_to ten_path(assigns(:ten))
  end

  test "should destroy ten" do
    assert_difference('Ten.count', -1) do
      delete :destroy, id: @ten
    end

    assert_redirected_to tens_path
  end
end
