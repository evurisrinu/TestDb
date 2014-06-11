require 'test_helper'

class ThirtysevensControllerTest < ActionController::TestCase
  setup do
    @thirtyseven = thirtysevens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtysevens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtyseven" do
    assert_difference('Thirtyseven.count') do
      post :create, thirtyseven: { name: @thirtyseven.name }
    end

    assert_redirected_to thirtyseven_path(assigns(:thirtyseven))
  end

  test "should show thirtyseven" do
    get :show, id: @thirtyseven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtyseven
    assert_response :success
  end

  test "should update thirtyseven" do
    patch :update, id: @thirtyseven, thirtyseven: { name: @thirtyseven.name }
    assert_redirected_to thirtyseven_path(assigns(:thirtyseven))
  end

  test "should destroy thirtyseven" do
    assert_difference('Thirtyseven.count', -1) do
      delete :destroy, id: @thirtyseven
    end

    assert_redirected_to thirtysevens_path
  end
end
