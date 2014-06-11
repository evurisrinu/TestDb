require 'test_helper'

class ThirtyfoursControllerTest < ActionController::TestCase
  setup do
    @thirtyfour = thirtyfours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtyfours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtyfour" do
    assert_difference('Thirtyfour.count') do
      post :create, thirtyfour: { name: @thirtyfour.name }
    end

    assert_redirected_to thirtyfour_path(assigns(:thirtyfour))
  end

  test "should show thirtyfour" do
    get :show, id: @thirtyfour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtyfour
    assert_response :success
  end

  test "should update thirtyfour" do
    patch :update, id: @thirtyfour, thirtyfour: { name: @thirtyfour.name }
    assert_redirected_to thirtyfour_path(assigns(:thirtyfour))
  end

  test "should destroy thirtyfour" do
    assert_difference('Thirtyfour.count', -1) do
      delete :destroy, id: @thirtyfour
    end

    assert_redirected_to thirtyfours_path
  end
end
