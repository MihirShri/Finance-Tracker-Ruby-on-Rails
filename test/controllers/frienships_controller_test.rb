require "test_helper"

class FrienshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get frienships_create_url
    assert_response :success
  end

  test "should get destroy" do
    get frienships_destroy_url
    assert_response :success
  end
end
