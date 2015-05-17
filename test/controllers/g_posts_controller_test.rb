require 'test_helper'

class GPostsControllerTest < ActionController::TestCase
  setup do
    @g_post = g_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g_post" do
    assert_difference('GPost.count') do
      post :create, g_post: { image: @g_post.image, ip_address: @g_post.ip_address, lat: @g_post.lat, lon: @g_post.lon, park: @g_post.park, user_id: @g_post.user_id, user_name: @g_post.user_name }
    end

    assert_redirected_to g_post_path(assigns(:g_post))
  end

  test "should show g_post" do
    get :show, id: @g_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g_post
    assert_response :success
  end

  test "should update g_post" do
    patch :update, id: @g_post, g_post: { image: @g_post.image, ip_address: @g_post.ip_address, lat: @g_post.lat, lon: @g_post.lon, park: @g_post.park, user_id: @g_post.user_id, user_name: @g_post.user_name }
    assert_redirected_to g_post_path(assigns(:g_post))
  end

  test "should destroy g_post" do
    assert_difference('GPost.count', -1) do
      delete :destroy, id: @g_post
    end

    assert_redirected_to g_posts_path
  end
end
