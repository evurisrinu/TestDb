require 'test_helper'

class ThirtysixesControllerTest < ActionController::TestCase
  setup do
    @thirtysix = thirtysixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtysixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtysix" do
    assert_difference('Thirtysix.count') do
      post :create, thirtysix: { name: @thirtysix.name }
    end

    assert_redirected_to thirtysix_path(assigns(:thirtysix))
  end

  test "should show thirtysix" do
    get :show, id: @thirtysix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtysix
    assert_response :success
  end

  test "should update thirtysix" do
    patch :update, id: @thirtysix, thirtysix: { name: @thirtysix.name }
    assert_redirected_to thirtysix_path(assigns(:thirtysix))
  end

  test "should destroy thirtysix" do
    assert_difference('Thirtysix.count', -1) do
      delete :destroy, id: @thirtysix
    end

    assert_redirected_to thirtysixes_path
  end
end
