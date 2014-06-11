require 'test_helper'

class NineteensControllerTest < ActionController::TestCase
  setup do
    @nineteen = nineteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nineteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nineteen" do
    assert_difference('Nineteen.count') do
      post :create, nineteen: { name: @nineteen.name }
    end

    assert_redirected_to nineteen_path(assigns(:nineteen))
  end

  test "should show nineteen" do
    get :show, id: @nineteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nineteen
    assert_response :success
  end

  test "should update nineteen" do
    patch :update, id: @nineteen, nineteen: { name: @nineteen.name }
    assert_redirected_to nineteen_path(assigns(:nineteen))
  end

  test "should destroy nineteen" do
    assert_difference('Nineteen.count', -1) do
      delete :destroy, id: @nineteen
    end

    assert_redirected_to nineteens_path
  end
end
