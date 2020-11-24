require 'test_helper'

class BuddyConnectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buddy_connections_index_url
    assert_response :success
  end

  test "should get show" do
    get buddy_connections_show_url
    assert_response :success
  end

  test "should get destroy" do
    get buddy_connections_destroy_url
    assert_response :success
  end

  test "should get create" do
    get buddy_connections_create_url
    assert_response :success
  end

  test "should get edit" do
    get buddy_connections_edit_url
    assert_response :success
  end

end
