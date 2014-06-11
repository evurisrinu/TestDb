require 'test_helper'

class ThirtythreesControllerTest < ActionController::TestCase
  setup do
    @thirtythree = thirtythrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtythrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtythree" do
    assert_difference('Thirtythree.count') do
      post :create, thirtythree: { name: @thirtythree.name }
    end

    assert_redirected_to thirtythree_path(assigns(:thirtythree))
  end

  test "should show thirtythree" do
    get :show, id: @thirtythree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtythree
    assert_response :success
  end

  test "should update thirtythree" do
    patch :update, id: @thirtythree, thirtythree: { name: @thirtythree.name }
    assert_redirected_to thirtythree_path(assigns(:thirtythree))
  end

  test "should destroy thirtythree" do
    assert_difference('Thirtythree.count', -1) do
      delete :destroy, id: @thirtythree
    end

    assert_redirected_to thirtythrees_path
  end
end
