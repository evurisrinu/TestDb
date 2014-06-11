require 'test_helper'

class SixesControllerTest < ActionController::TestCase
  setup do
    @six = sixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create six" do
    assert_difference('Six.count') do
      post :create, six: { name: @six.name }
    end

    assert_redirected_to six_path(assigns(:six))
  end

  test "should show six" do
    get :show, id: @six
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @six
    assert_response :success
  end

  test "should update six" do
    patch :update, id: @six, six: { name: @six.name }
    assert_redirected_to six_path(assigns(:six))
  end

  test "should destroy six" do
    assert_difference('Six.count', -1) do
      delete :destroy, id: @six
    end

    assert_redirected_to sixes_path
  end
end
