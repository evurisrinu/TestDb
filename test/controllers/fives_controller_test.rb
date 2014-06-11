require 'test_helper'

class FivesControllerTest < ActionController::TestCase
  setup do
    @fife = fives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fife" do
    assert_difference('Five.count') do
      post :create, fife: { name: @fife.name }
    end

    assert_redirected_to fife_path(assigns(:fife))
  end

  test "should show fife" do
    get :show, id: @fife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fife
    assert_response :success
  end

  test "should update fife" do
    patch :update, id: @fife, fife: { name: @fife.name }
    assert_redirected_to fife_path(assigns(:fife))
  end

  test "should destroy fife" do
    assert_difference('Five.count', -1) do
      delete :destroy, id: @fife
    end

    assert_redirected_to fives_path
  end
end
