require 'test_helper'

class TwentyonesControllerTest < ActionController::TestCase
  setup do
    @twentyone = twentyones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentyones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentyone" do
    assert_difference('Twentyone.count') do
      post :create, twentyone: { name: @twentyone.name }
    end

    assert_redirected_to twentyone_path(assigns(:twentyone))
  end

  test "should show twentyone" do
    get :show, id: @twentyone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentyone
    assert_response :success
  end

  test "should update twentyone" do
    patch :update, id: @twentyone, twentyone: { name: @twentyone.name }
    assert_redirected_to twentyone_path(assigns(:twentyone))
  end

  test "should destroy twentyone" do
    assert_difference('Twentyone.count', -1) do
      delete :destroy, id: @twentyone
    end

    assert_redirected_to twentyones_path
  end
end
