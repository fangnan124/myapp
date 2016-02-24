require 'test_helper'

class NewsinfosControllerTest < ActionController::TestCase
  setup do
    @newsinfo = newsinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsinfos)
  end

  test "should get new" do
    get :bk_new
    assert_response :success
  end

  test "should create newsinfo" do
    assert_difference('Newsinfo.count') do
      post :create, newsinfo: { content: @newsinfo.content, published: @newsinfo.published, publisher: @newsinfo.publisher, title: @newsinfo.title }
    end

    assert_redirected_to newsinfo_path(assigns(:newsinfo))
  end

  test "should show newsinfo" do
    get :show, id: @newsinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsinfo
    assert_response :success
  end

  test "should update newsinfo" do
    patch :update, id: @newsinfo, newsinfo: { content: @newsinfo.content, published: @newsinfo.published, publisher: @newsinfo.publisher, title: @newsinfo.title }
    assert_redirected_to newsinfo_path(assigns(:newsinfo))
  end

  test "should destroy newsinfo" do
    assert_difference('Newsinfo.count', -1) do
      delete :destroy, id: @newsinfo
    end

    assert_redirected_to newsinfos_path
  end
end
