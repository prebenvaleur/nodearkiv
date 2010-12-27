require 'test_helper'

class TuneInCompilationsControllerTest < ActionController::TestCase
  setup do
    @tune_in_compilation = tune_in_compilations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tune_in_compilations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tune_in_compilation" do
    assert_difference('TuneInCompilation.count') do
      post :create, :tune_in_compilation => @tune_in_compilation.attributes
    end

    assert_redirected_to tune_in_compilation_path(assigns(:tune_in_compilation))
  end

  test "should show tune_in_compilation" do
    get :show, :id => @tune_in_compilation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tune_in_compilation.to_param
    assert_response :success
  end

  test "should update tune_in_compilation" do
    put :update, :id => @tune_in_compilation.to_param, :tune_in_compilation => @tune_in_compilation.attributes
    assert_redirected_to tune_in_compilation_path(assigns(:tune_in_compilation))
  end

  test "should destroy tune_in_compilation" do
    assert_difference('TuneInCompilation.count', -1) do
      delete :destroy, :id => @tune_in_compilation.to_param
    end

    assert_redirected_to tune_in_compilations_path
  end
end
