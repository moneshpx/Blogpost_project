require "test_helper"

class SocialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get socials_index_url
    assert_response :success
  end

  test "should get new" do
    get socials_new_url
    assert_response :success
  end
end
