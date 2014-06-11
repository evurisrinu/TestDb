require 'test_helper'

class NinesControllerTest < ActionController::TestCase
  setup do
    @nine = nines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nine" do
    assert_difference('Nine.count') do
      post :create, nine: { name: @nine.name }
    end

    assert_redirected_to nine_path(assigns(:nine))
  end

  test "should show nine" do
    get :show, id: @nine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nine
    assert_response :success
  end

  test "should update nine" do
    patch :update, id: @nine, nine: { name: @nine.name }
    assert_redirected_to nine_path(assigns(:nine))
  end

  test "should destroy nine" do
    assert_difference('Nine.count', -1) do
      delete :destroy, id: @nine
    end

    assert_redirected_to nines_path
  end
end
