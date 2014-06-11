require 'test_helper'

class ThirtyfivesControllerTest < ActionController::TestCase
  setup do
    @thirtyfife = thirtyfives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirtyfives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirtyfife" do
    assert_difference('Thirtyfive.count') do
      post :create, thirtyfife: { name: @thirtyfife.name }
    end

    assert_redirected_to thirtyfife_path(assigns(:thirtyfife))
  end

  test "should show thirtyfife" do
    get :show, id: @thirtyfife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirtyfife
    assert_response :success
  end

  test "should update thirtyfife" do
    patch :update, id: @thirtyfife, thirtyfife: { name: @thirtyfife.name }
    assert_redirected_to thirtyfife_path(assigns(:thirtyfife))
  end

  test "should destroy thirtyfife" do
    assert_difference('Thirtyfive.count', -1) do
      delete :destroy, id: @thirtyfife
    end

    assert_redirected_to thirtyfives_path
  end
end
