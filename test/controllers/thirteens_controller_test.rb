require 'test_helper'

class ThirteensControllerTest < ActionController::TestCase
  setup do
    @thirteen = thirteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirteen" do
    assert_difference('Thirteen.count') do
      post :create, thirteen: { name: @thirteen.name }
    end

    assert_redirected_to thirteen_path(assigns(:thirteen))
  end

  test "should show thirteen" do
    get :show, id: @thirteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirteen
    assert_response :success
  end

  test "should update thirteen" do
    patch :update, id: @thirteen, thirteen: { name: @thirteen.name }
    assert_redirected_to thirteen_path(assigns(:thirteen))
  end

  test "should destroy thirteen" do
    assert_difference('Thirteen.count', -1) do
      delete :destroy, id: @thirteen
    end

    assert_redirected_to thirteens_path
  end
end
