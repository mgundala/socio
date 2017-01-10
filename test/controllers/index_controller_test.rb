require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get index_edit_url
    assert_response :success
  end

  test "should get profile" do
    get index_profile_url
    assert_response :success
  end

  test "should get matches" do
    get index_matches_url
    assert_response :success
  end

end
