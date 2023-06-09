require "test_helper"

class BycarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bycar_index_url
    assert_response :success
  end
end
