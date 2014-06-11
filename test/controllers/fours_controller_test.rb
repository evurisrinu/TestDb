require 'test_helper'

class FoursControllerTest < ActionController::TestCase
  setup do
    @four = fours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create four" do
    assert_difference('Four.count') do
      post :create, four: { name: @four.name }
    end

    assert_redirected_to four_path(assigns(:four))
  end

  test "should show four" do
    get :show, id: @four
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @four
    assert_response :success
  end

  test "should update four" do
    patch :update, id: @four, four: { name: @four.name }
    assert_redirected_to four_path(assigns(:four))
  end

  test "should destroy four" do
    assert_difference('Four.count', -1) do
      delete :destroy, id: @four
    end

    assert_redirected_to fours_path
  end
end
