require 'test_helper'

class TunesControllerTest < ActionController::TestCase
  setup do
    @tune = tunes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tunes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tune" do
    assert_difference('Tune.count') do
      post :create, :tune => @tune.attributes
    end

    assert_redirected_to tune_path(assigns(:tune))
  end

  test "should show tune" do
    get :show, :id => @tune.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tune.to_param
    assert_response :success
  end

  test "should update tune" do
    put :update, :id => @tune.to_param, :tune => @tune.attributes
    assert_redirected_to tune_path(assigns(:tune))
  end

  test "should destroy tune" do
    assert_difference('Tune.count', -1) do
      delete :destroy, :id => @tune.to_param
    end

    assert_redirected_to tunes_path
  end
end
