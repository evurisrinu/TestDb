require 'test_helper'

class ThirtyninesControllerTest < ActionController::TestCase
  setup do
    @thirtynine = thirtynines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtynines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtynine" do
    assert_difference('Thirtynine.count') do
      post :create, thirtynine: { name: @thirtynine.name }
    end

    assert_redirected_to thirtynine_path(assigns(:thirtynine))
  end

  test "should show thirtynine" do
    get :show, id: @thirtynine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtynine
    assert_response :success
  end

  test "should update thirtynine" do
    patch :update, id: @thirtynine, thirtynine: { name: @thirtynine.name }
    assert_redirected_to thirtynine_path(assigns(:thirtynine))
  end

  test "should destroy thirtynine" do
    assert_difference('Thirtynine.count', -1) do
      delete :destroy, id: @thirtynine
    end

    assert_redirected_to thirtynines_path
  end
end
