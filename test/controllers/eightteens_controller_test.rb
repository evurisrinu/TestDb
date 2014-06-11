require 'test_helper'

class EightteensControllerTest < ActionController::TestCase
  setup do
    @eightteen = eightteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eightteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eightteen" do
    assert_difference('Eightteen.count') do
      post :create, eightteen: { name: @eightteen.name }
    end

    assert_redirected_to eightteen_path(assigns(:eightteen))
  end

  test "should show eightteen" do
    get :show, id: @eightteen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eightteen
    assert_response :success
  end

  test "should update eightteen" do
    patch :update, id: @eightteen, eightteen: { name: @eightteen.name }
    assert_redirected_to eightteen_path(assigns(:eightteen))
  end

  test "should destroy eightteen" do
    assert_difference('Eightteen.count', -1) do
      delete :destroy, id: @eightteen
    end

    assert_redirected_to eightteens_path
  end
end
