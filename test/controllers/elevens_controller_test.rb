require 'test_helper'

class ElevensControllerTest < ActionController::TestCase
  setup do
    @eleven = elevens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elevens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleven" do
    assert_difference('Eleven.count') do
      post :create, eleven: { name: @eleven.name }
    end

    assert_redirected_to eleven_path(assigns(:eleven))
  end

  test "should show eleven" do
    get :show, id: @eleven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eleven
    assert_response :success
  end

  test "should update eleven" do
    patch :update, id: @eleven, eleven: { name: @eleven.name }
    assert_redirected_to eleven_path(assigns(:eleven))
  end

  test "should destroy eleven" do
    assert_difference('Eleven.count', -1) do
      delete :destroy, id: @eleven
    end

    assert_redirected_to elevens_path
  end
end
