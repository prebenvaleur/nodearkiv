require 'test_helper'

class PrivateLocationsControllerTest < ActionController::TestCase
  setup do
    @private_location = private_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_location" do
    assert_difference('PrivateLocation.count') do
      post :create, :private_location => @private_location.attributes
    end

    assert_redirected_to private_location_path(assigns(:private_location))
  end

  test "should show private_location" do
    get :show, :id => @private_location.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @private_location.to_param
    assert_response :success
  end

  test "should update private_location" do
    put :update, :id => @private_location.to_param, :private_location => @private_location.attributes
    assert_redirected_to private_location_path(assigns(:private_location))
  end

  test "should destroy private_location" do
    assert_difference('PrivateLocation.count', -1) do
      delete :destroy, :id => @private_location.to_param
    end

    assert_redirected_to private_locations_path
  end
end
