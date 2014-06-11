require 'test_helper'

class TwentyninesControllerTest < ActionController::TestCase
  setup do
    @twentynine = twentynines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentynines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentynine" do
    assert_difference('Twentynine.count') do
      post :create, twentynine: { name: @twentynine.name }
    end

    assert_redirected_to twentynine_path(assigns(:twentynine))
  end

  test "should show twentynine" do
    get :show, id: @twentynine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentynine
    assert_response :success
  end

  test "should update twentynine" do
    patch :update, id: @twentynine, twentynine: { name: @twentynine.name }
    assert_redirected_to twentynine_path(assigns(:twentynine))
  end

  test "should destroy twentynine" do
    assert_difference('Twentynine.count', -1) do
      delete :destroy, id: @twentynine
    end

    assert_redirected_to twentynines_path
  end
end
