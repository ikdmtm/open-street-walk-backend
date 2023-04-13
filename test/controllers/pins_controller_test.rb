require "test_helper"

class PinsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pins_create_url
    assert_response :success
  end

  test "should get update" do
    get pins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pins_destroy_url
    assert_response :success
  end
end
