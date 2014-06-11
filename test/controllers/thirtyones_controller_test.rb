require 'test_helper'

class ThirtyonesControllerTest < ActionController::TestCase
  setup do
    @thirtyone = thirtyones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtyones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtyone" do
    assert_difference('Thirtyone.count') do
      post :create, thirtyone: { name: @thirtyone.name }
    end

    assert_redirected_to thirtyone_path(assigns(:thirtyone))
  end

  test "should show thirtyone" do
    get :show, id: @thirtyone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtyone
    assert_response :success
  end

  test "should update thirtyone" do
    patch :update, id: @thirtyone, thirtyone: { name: @thirtyone.name }
    assert_redirected_to thirtyone_path(assigns(:thirtyone))
  end

  test "should destroy thirtyone" do
    assert_difference('Thirtyone.count', -1) do
      delete :destroy, id: @thirtyone
    end

    assert_redirected_to thirtyones_path
  end
end
