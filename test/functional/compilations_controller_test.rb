require 'test_helper'

class CompilationsControllerTest < ActionController::TestCase
  setup do
    @compilation = compilations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compilations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compilation" do
    assert_difference('Compilation.count') do
      post :create, :compilation => @compilation.attributes
    end

    assert_redirected_to compilation_path(assigns(:compilation))
  end

  test "should show compilation" do
    get :show, :id => @compilation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @compilation.to_param
    assert_response :success
  end

  test "should update compilation" do
    put :update, :id => @compilation.to_param, :compilation => @compilation.attributes
    assert_redirected_to compilation_path(assigns(:compilation))
  end

  test "should destroy compilation" do
    assert_difference('Compilation.count', -1) do
      delete :destroy, :id => @compilation.to_param
    end

    assert_redirected_to compilations_path
  end
end
