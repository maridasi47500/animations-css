require "test_helper"

class PlacepicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @placepic = placepics(:one)
  end

  test "should get index" do
    get placepics_url
    assert_response :success
  end

  test "should get new" do
    get new_placepic_url
    assert_response :success
  end

  test "should create placepic" do
    assert_difference("Placepic.count") do
      post placepics_url, params: { placepic: { pic: @placepic.pic, title: @placepic.title } }
    end

    assert_redirected_to placepic_url(Placepic.last)
  end

  test "should show placepic" do
    get placepic_url(@placepic)
    assert_response :success
  end

  test "should get edit" do
    get edit_placepic_url(@placepic)
    assert_response :success
  end

  test "should update placepic" do
    patch placepic_url(@placepic), params: { placepic: { pic: @placepic.pic, title: @placepic.title } }
    assert_redirected_to placepic_url(@placepic)
  end

  test "should destroy placepic" do
    assert_difference("Placepic.count", -1) do
      delete placepic_url(@placepic)
    end

    assert_redirected_to placepics_url
  end
end
