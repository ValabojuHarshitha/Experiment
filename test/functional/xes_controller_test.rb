require 'test_helper'

class XesControllerTest < ActionController::TestCase
  setup do
    @x = xes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create x" do
    assert_difference('X.count') do
      post :create, :x => {  }
    end

    assert_redirected_to x_path(assigns(:x))
  end

  test "should show x" do
    get :show, :id => @x
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @x
    assert_response :success
  end

  test "should update x" do
    put :update, :id => @x, :x => {  }
    assert_redirected_to x_path(assigns(:x))
  end

  test "should destroy x" do
    assert_difference('X.count', -1) do
      delete :destroy, :id => @x
    end

    assert_redirected_to xes_path
  end
end
