require 'test_helper'

class BusinessDescriptionsControllerTest < ActionController::TestCase
  setup do
    @business_description = business_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_description" do
    assert_difference('BusinessDescription.count') do
      post :create, business_description: { business: @business_description.business, field: @business_description.field, programming_language: @business_description.programming_language }
    end

    assert_redirected_to business_description_path(assigns(:business_description))
  end

  test "should show business_description" do
    get :show, id: @business_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_description
    assert_response :success
  end

  test "should update business_description" do
    patch :update, id: @business_description, business_description: { business: @business_description.business, field: @business_description.field, programming_language: @business_description.programming_language }
    assert_redirected_to business_description_path(assigns(:business_description))
  end

  test "should destroy business_description" do
    assert_difference('BusinessDescription.count', -1) do
      delete :destroy, id: @business_description
    end

    assert_redirected_to business_descriptions_path
  end
end
