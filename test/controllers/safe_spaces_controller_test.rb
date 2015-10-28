require 'test_helper'

class SafeSpacesControllerTest < ActionController::TestCase
  setup do
    @safe_space = safe_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:safe_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create safe_space" do
    assert_difference('SafeSpace.count') do
      post :create, safe_space: { address: @safe_space.address, contact_email: @safe_space.contact_email, contact_name: @safe_space.contact_name, contact_phone: @safe_space.contact_phone, country: @safe_space.country, latitude: @safe_space.latitude, longitude: @safe_space.longitude, postcode: @safe_space.postcode, state: @safe_space.state, suburb: @safe_space.suburb }
    end

    assert_redirected_to safe_space_path(assigns(:safe_space))
  end

  test "should show safe_space" do
    get :show, id: @safe_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @safe_space
    assert_response :success
  end

  test "should update safe_space" do
    patch :update, id: @safe_space, safe_space: { address: @safe_space.address, contact_email: @safe_space.contact_email, contact_name: @safe_space.contact_name, contact_phone: @safe_space.contact_phone, country: @safe_space.country, latitude: @safe_space.latitude, longitude: @safe_space.longitude, postcode: @safe_space.postcode, state: @safe_space.state, suburb: @safe_space.suburb }
    assert_redirected_to safe_space_path(assigns(:safe_space))
  end

  test "should destroy safe_space" do
    assert_difference('SafeSpace.count', -1) do
      delete :destroy, id: @safe_space
    end

    assert_redirected_to safe_spaces_path
  end
end
