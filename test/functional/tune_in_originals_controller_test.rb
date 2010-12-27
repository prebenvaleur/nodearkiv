require 'test_helper'

class TuneInOriginalsControllerTest < ActionController::TestCase
  setup do
    @tune_in_original = tune_in_originals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tune_in_originals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tune_in_original" do
    assert_difference('TuneInOriginal.count') do
      post :create, :tune_in_original => @tune_in_original.attributes
    end

    assert_redirected_to tune_in_original_path(assigns(:tune_in_original))
  end

  test "should show tune_in_original" do
    get :show, :id => @tune_in_original.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tune_in_original.to_param
    assert_response :success
  end

  test "should update tune_in_original" do
    put :update, :id => @tune_in_original.to_param, :tune_in_original => @tune_in_original.attributes
    assert_redirected_to tune_in_original_path(assigns(:tune_in_original))
  end

  test "should destroy tune_in_original" do
    assert_difference('TuneInOriginal.count', -1) do
      delete :destroy, :id => @tune_in_original.to_param
    end

    assert_redirected_to tune_in_originals_path
  end
end
