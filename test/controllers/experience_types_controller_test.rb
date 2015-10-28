require 'test_helper'

class ExperienceTypesControllerTest < ActionController::TestCase
  setup do
    @experience_type = experience_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experience_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience_type" do
    assert_difference('ExperienceType.count') do
      post :create, experience_type: { description: @experience_type.description, name: @experience_type.name }
    end

    assert_redirected_to experience_type_path(assigns(:experience_type))
  end

  test "should show experience_type" do
    get :show, id: @experience_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience_type
    assert_response :success
  end

  test "should update experience_type" do
    patch :update, id: @experience_type, experience_type: { description: @experience_type.description, name: @experience_type.name }
    assert_redirected_to experience_type_path(assigns(:experience_type))
  end

  test "should destroy experience_type" do
    assert_difference('ExperienceType.count', -1) do
      delete :destroy, id: @experience_type
    end

    assert_redirected_to experience_types_path
  end
end
