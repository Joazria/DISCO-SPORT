require 'test_helper'

class ValidationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get validation_index_url
    assert_response :success
  end

  test "should get new" do
    get validation_new_url
    assert_response :success
  end

  test "should get create" do
    get validation_create_url
    assert_response :success
  end

  test "should get show" do
    get validation_show_url
    assert_response :success
  end

  test "should get edit" do
    get validation_edit_url
    assert_response :success
  end

  test "should get update" do
    get validation_update_url
    assert_response :success
  end

  test "should get destroy" do
    get validation_destroy_url
    assert_response :success
  end

end
