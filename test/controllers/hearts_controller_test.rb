require "test_helper"

class HeartsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hearts_new_url
    assert_response :success
  end

  test "should get create" do
    get hearts_create_url
    assert_response :success
  end
end
