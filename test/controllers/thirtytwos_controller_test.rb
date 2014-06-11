require 'test_helper'

class ThirtytwosControllerTest < ActionController::TestCase
  setup do
    @thirtytwo = thirtytwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtytwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtytwo" do
    assert_difference('Thirtytwo.count') do
      post :create, thirtytwo: { name: @thirtytwo.name }
    end

    assert_redirected_to thirtytwo_path(assigns(:thirtytwo))
  end

  test "should show thirtytwo" do
    get :show, id: @thirtytwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtytwo
    assert_response :success
  end

  test "should update thirtytwo" do
    patch :update, id: @thirtytwo, thirtytwo: { name: @thirtytwo.name }
    assert_redirected_to thirtytwo_path(assigns(:thirtytwo))
  end

  test "should destroy thirtytwo" do
    assert_difference('Thirtytwo.count', -1) do
      delete :destroy, id: @thirtytwo
    end

    assert_redirected_to thirtytwos_path
  end
end
