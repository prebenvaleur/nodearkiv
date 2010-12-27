require 'test_helper'

class GreenBindersControllerTest < ActionController::TestCase
  setup do
    @green_binder = green_binders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:green_binders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create green_binder" do
    assert_difference('GreenBinder.count') do
      post :create, :green_binder => @green_binder.attributes
    end

    assert_redirected_to green_binder_path(assigns(:green_binder))
  end

  test "should show green_binder" do
    get :show, :id => @green_binder.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @green_binder.to_param
    assert_response :success
  end

  test "should update green_binder" do
    put :update, :id => @green_binder.to_param, :green_binder => @green_binder.attributes
    assert_redirected_to green_binder_path(assigns(:green_binder))
  end

  test "should destroy green_binder" do
    assert_difference('GreenBinder.count', -1) do
      delete :destroy, :id => @green_binder.to_param
    end

    assert_redirected_to green_binders_path
  end
end
