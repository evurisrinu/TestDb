require 'test_helper'

class SeventeensControllerTest < ActionController::TestCase
  setup do
    @seventeen = seventeens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seventeens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seventeen" do
    assert_difference('Seventeen.count') do
      post :create, seventeen: { name: @seventeen.name }
    end

    assert_redirected_to seventeen_path(assigns(:seventeen))
  end

  test "should show seventeen" do
    get :show, id: @seventeen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seventeen
    assert_response :success
  end

  test "should update seventeen" do
    patch :update, id: @seventeen, seventeen: { name: @seventeen.name }
    assert_redirected_to seventeen_path(assigns(:seventeen))
  end

  test "should destroy seventeen" do
    assert_difference('Seventeen.count', -1) do
      delete :destroy, id: @seventeen
    end

    assert_redirected_to seventeens_path
  end
end
