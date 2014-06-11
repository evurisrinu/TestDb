require 'test_helper'

class TwentysixesControllerTest < ActionController::TestCase
  setup do
    @twentysix = twentysixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentysixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentysix" do
    assert_difference('Twentysix.count') do
      post :create, twentysix: { name: @twentysix.name }
    end

    assert_redirected_to twentysix_path(assigns(:twentysix))
  end

  test "should show twentysix" do
    get :show, id: @twentysix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentysix
    assert_response :success
  end

  test "should update twentysix" do
    patch :update, id: @twentysix, twentysix: { name: @twentysix.name }
    assert_redirected_to twentysix_path(assigns(:twentysix))
  end

  test "should destroy twentysix" do
    assert_difference('Twentysix.count', -1) do
      delete :destroy, id: @twentysix
    end

    assert_redirected_to twentysixes_path
  end
end
