require 'test_helper'

class RunsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get runs_index_url
    assert_response :success
  end

  test "should get show" do
    get runs_show_url
    assert_response :success
  end

  test "should get edit" do
    get runs_edit_url
    assert_response :success
  end

  test "should get update" do
    get runs_update_url
    assert_response :success
  end

  test "should get create" do
    get runs_create_url
    assert_response :success
  end

  test "should get new" do
    get runs_new_url
    assert_response :success
  end

end