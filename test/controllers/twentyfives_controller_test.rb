require 'test_helper'

class TwentyfivesControllerTest < ActionController::TestCase
  setup do
    @twentyfife = twentyfives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentyfives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentyfife" do
    assert_difference('Twentyfive.count') do
      post :create, twentyfife: { name: @twentyfife.name }
    end

    assert_redirected_to twentyfife_path(assigns(:twentyfife))
  end

  test "should show twentyfife" do
    get :show, id: @twentyfife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentyfife
    assert_response :success
  end

  test "should update twentyfife" do
    patch :update, id: @twentyfife, twentyfife: { name: @twentyfife.name }
    assert_redirected_to twentyfife_path(assigns(:twentyfife))
  end

  test "should destroy twentyfife" do
    assert_difference('Twentyfive.count', -1) do
      delete :destroy, id: @twentyfife
    end

    assert_redirected_to twentyfives_path
  end
end
