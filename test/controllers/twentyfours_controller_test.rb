require 'test_helper'

class TwentyfoursControllerTest < ActionController::TestCase
  setup do
    @twentyfour = twentyfours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentyfours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentyfour" do
    assert_difference('Twentyfour.count') do
      post :create, twentyfour: { name: @twentyfour.name }
    end

    assert_redirected_to twentyfour_path(assigns(:twentyfour))
  end

  test "should show twentyfour" do
    get :show, id: @twentyfour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentyfour
    assert_response :success
  end

  test "should update twentyfour" do
    patch :update, id: @twentyfour, twentyfour: { name: @twentyfour.name }
    assert_redirected_to twentyfour_path(assigns(:twentyfour))
  end

  test "should destroy twentyfour" do
    assert_difference('Twentyfour.count', -1) do
      delete :destroy, id: @twentyfour
    end

    assert_redirected_to twentyfours_path
  end
end
