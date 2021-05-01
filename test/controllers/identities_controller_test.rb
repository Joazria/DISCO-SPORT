require 'test_helper'

class IdentitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get identities_show_url
    assert_response :success
  end

  test "should get edit" do
    get identities_edit_url
    assert_response :success
  end

  test "should get update" do
    get identities_update_url
    assert_response :success
  end

end
