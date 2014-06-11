require 'test_helper'

class ThreesControllerTest < ActionController::TestCase
  setup do
    @three = threes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create three" do
    assert_difference('Three.count') do
      post :create, three: { name: @three.name }
    end

    assert_redirected_to three_path(assigns(:three))
  end

  test "should show three" do
    get :show, id: @three
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @three
    assert_response :success
  end

  test "should update three" do
    patch :update, id: @three, three: { name: @three.name }
    assert_redirected_to three_path(assigns(:three))
  end

  test "should destroy three" do
    assert_difference('Three.count', -1) do
      delete :destroy, id: @three
    end

    assert_redirected_to threes_path
  end
end
