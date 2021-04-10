require 'test_helper'

class PitchingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pitching_index_url
    assert_response :success
  end

  test "should get new" do
    get pitching_new_url
    assert_response :success
  end

  test "should get create" do
    get pitching_create_url
    assert_response :success
  end

  test "should get show" do
    get pitching_show_url
    assert_response :success
  end

  test "should get edit" do
    get pitching_edit_url
    assert_response :success
  end

  test "should get update" do
    get pitching_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pitching_destroy_url
    assert_response :success
  end

end
