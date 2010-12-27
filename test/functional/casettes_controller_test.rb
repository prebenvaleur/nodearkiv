require 'test_helper'

class CasettesControllerTest < ActionController::TestCase
  setup do
    @casette = casettes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casettes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casette" do
    assert_difference('Casette.count') do
      post :create, :casette => @casette.attributes
    end

    assert_redirected_to casette_path(assigns(:casette))
  end

  test "should show casette" do
    get :show, :id => @casette.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @casette.to_param
    assert_response :success
  end

  test "should update casette" do
    put :update, :id => @casette.to_param, :casette => @casette.attributes
    assert_redirected_to casette_path(assigns(:casette))
  end

  test "should destroy casette" do
    assert_difference('Casette.count', -1) do
      delete :destroy, :id => @casette.to_param
    end

    assert_redirected_to casettes_path
  end
end
