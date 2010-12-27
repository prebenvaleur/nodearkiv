require 'test_helper'

class TuneCopiesControllerTest < ActionController::TestCase
  setup do
    @tune_copy = tune_copies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tune_copies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tune_copy" do
    assert_difference('TuneCopy.count') do
      post :create, :tune_copy => @tune_copy.attributes
    end

    assert_redirected_to tune_copy_path(assigns(:tune_copy))
  end

  test "should show tune_copy" do
    get :show, :id => @tune_copy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tune_copy.to_param
    assert_response :success
  end

  test "should update tune_copy" do
    put :update, :id => @tune_copy.to_param, :tune_copy => @tune_copy.attributes
    assert_redirected_to tune_copy_path(assigns(:tune_copy))
  end

  test "should destroy tune_copy" do
    assert_difference('TuneCopy.count', -1) do
      delete :destroy, :id => @tune_copy.to_param
    end

    assert_redirected_to tune_copies_path
  end
end
