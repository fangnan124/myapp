require 'test_helper'

class BusinessResultsControllerTest < ActionController::TestCase
  setup do
    @business_result = business_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_result" do
    assert_difference('BusinessResult.count') do
      post :create, business_result: { content: @business_result.content, system_name: @business_result.system_name }
    end

    assert_redirected_to business_result_path(assigns(:business_result))
  end

  test "should show business_result" do
    get :show, id: @business_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_result
    assert_response :success
  end

  test "should update business_result" do
    patch :update, id: @business_result, business_result: { content: @business_result.content, system_name: @business_result.system_name }
    assert_redirected_to business_result_path(assigns(:business_result))
  end

  test "should destroy business_result" do
    assert_difference('BusinessResult.count', -1) do
      delete :destroy, id: @business_result
    end

    assert_redirected_to business_results_path
  end
end
