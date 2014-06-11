require 'test_helper'

class TwentythreesControllerTest < ActionController::TestCase
  setup do
    @twentythree = twentythrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twentythrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twentythree" do
    assert_difference('Twentythree.count') do
      post :create, twentythree: { name: @twentythree.name }
    end

    assert_redirected_to twentythree_path(assigns(:twentythree))
  end

  test "should show twentythree" do
    get :show, id: @twentythree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twentythree
    assert_response :success
  end

  test "should update twentythree" do
    patch :update, id: @twentythree, twentythree: { name: @twentythree.name }
    assert_redirected_to twentythree_path(assigns(:twentythree))
  end

  test "should destroy twentythree" do
    assert_difference('Twentythree.count', -1) do
      delete :destroy, id: @twentythree
    end

    assert_redirected_to twentythrees_path
  end
end
