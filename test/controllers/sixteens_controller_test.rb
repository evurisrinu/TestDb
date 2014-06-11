require 'test_helper'

class SixteensControllerTest < ActionController::TestCase
  setup do
    @sixteen = sixteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixteen" do
    assert_difference('Sixteen.count') do
      post :create, sixteen: { name: @sixteen.name }
    end

    assert_redirected_to sixteen_path(assigns(:sixteen))
  end

  test "should show sixteen" do
    get :show, id: @sixteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixteen
    assert_response :success
  end

  test "should update sixteen" do
    patch :update, id: @sixteen, sixteen: { name: @sixteen.name }
    assert_redirected_to sixteen_path(assigns(:sixteen))
  end

  test "should destroy sixteen" do
    assert_difference('Sixteen.count', -1) do
      delete :destroy, id: @sixteen
    end

    assert_redirected_to sixteens_path
  end
end
