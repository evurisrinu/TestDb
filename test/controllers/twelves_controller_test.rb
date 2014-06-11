require 'test_helper'

class TwelvesControllerTest < ActionController::TestCase
  setup do
    @twelf = twelves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twelves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twelf" do
    assert_difference('Twelve.count') do
      post :create, twelf: { name: @twelf.name }
    end

    assert_redirected_to twelf_path(assigns(:twelf))
  end

  test "should show twelf" do
    get :show, id: @twelf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twelf
    assert_response :success
  end

  test "should update twelf" do
    patch :update, id: @twelf, twelf: { name: @twelf.name }
    assert_redirected_to twelf_path(assigns(:twelf))
  end

  test "should destroy twelf" do
    assert_difference('Twelve.count', -1) do
      delete :destroy, id: @twelf
    end

    assert_redirected_to twelves_path
  end
end
