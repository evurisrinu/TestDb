require 'test_helper'

class TwentysevensControllerTest < ActionController::TestCase
  setup do
    @twentyseven = twentysevens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentysevens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentyseven" do
    assert_difference('Twentyseven.count') do
      post :create, twentyseven: { name: @twentyseven.name }
    end

    assert_redirected_to twentyseven_path(assigns(:twentyseven))
  end

  test "should show twentyseven" do
    get :show, id: @twentyseven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentyseven
    assert_response :success
  end

  test "should update twentyseven" do
    patch :update, id: @twentyseven, twentyseven: { name: @twentyseven.name }
    assert_redirected_to twentyseven_path(assigns(:twentyseven))
  end

  test "should destroy twentyseven" do
    assert_difference('Twentyseven.count', -1) do
      delete :destroy, id: @twentyseven
    end

    assert_redirected_to twentysevens_path
  end
end
