require "test_helper"

class BoatControllerTest < ActionDispatch::IntegrationTest
  test "should get page1" do
    get boat_page1_url
    assert_response :success
  end
end
