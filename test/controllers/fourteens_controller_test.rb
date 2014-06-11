require 'test_helper'

class FourteensControllerTest < ActionController::TestCase
  setup do
    @fourteen = fourteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourteen" do
    assert_difference('Fourteen.count') do
      post :create, fourteen: { name: @fourteen.name }
    end

    assert_redirected_to fourteen_path(assigns(:fourteen))
  end

  test "should show fourteen" do
    get :show, id: @fourteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourteen
    assert_response :success
  end

  test "should update fourteen" do
    patch :update, id: @fourteen, fourteen: { name: @fourteen.name }
    assert_redirected_to fourteen_path(assigns(:fourteen))
  end

  test "should destroy fourteen" do
    assert_difference('Fourteen.count', -1) do
      delete :destroy, id: @fourteen
    end

    assert_redirected_to fourteens_path
  end
end
