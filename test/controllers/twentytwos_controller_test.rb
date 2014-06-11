require 'test_helper'

class TwentytwosControllerTest < ActionController::TestCase
  setup do
    @twentytwo = twentytwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentytwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentytwo" do
    assert_difference('Twentytwo.count') do
      post :create, twentytwo: { name: @twentytwo.name }
    end

    assert_redirected_to twentytwo_path(assigns(:twentytwo))
  end

  test "should show twentytwo" do
    get :show, id: @twentytwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentytwo
    assert_response :success
  end

  test "should update twentytwo" do
    patch :update, id: @twentytwo, twentytwo: { name: @twentytwo.name }
    assert_redirected_to twentytwo_path(assigns(:twentytwo))
  end

  test "should destroy twentytwo" do
    assert_difference('Twentytwo.count', -1) do
      delete :destroy, id: @twentytwo
    end

    assert_redirected_to twentytwos_path
  end
end
