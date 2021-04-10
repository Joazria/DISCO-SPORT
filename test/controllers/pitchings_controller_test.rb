require 'test_helper'

class PitchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pitchings_index_url
    assert_response :success
  end

  test "should get show" do
    get pitchings_show_url
    assert_response :success
  end

  test "should get new" do
    get pitchings_new_url
    assert_response :success
  end

  test "should get create" do
    get pitchings_create_url
    assert_response :success
  end

  test "should get edit" do
    get pitchings_edit_url
    assert_response :success
  end

  test "should get update" do
    get pitchings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pitchings_destroy_url
    assert_response :success
  end

end
