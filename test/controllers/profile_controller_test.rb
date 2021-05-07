require "test_helper"

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get liked" do
    get profile_liked_url
    assert_response :success
  end

  test "should get reviewed" do
    get profile_reviewed_url
    assert_response :success
  end
end
