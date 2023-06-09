require "test_helper"

class StuffpicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stuffpic = stuffpics(:one)
  end

  test "should get index" do
    get stuffpics_url
    assert_response :success
  end

  test "should get new" do
    get new_stuffpic_url
    assert_response :success
  end

  test "should create stuffpic" do
    assert_difference("Stuffpic.count") do
      post stuffpics_url, params: { stuffpic: { pic: @stuffpic.pic, title: @stuffpic.title } }
    end

    assert_redirected_to stuffpic_url(Stuffpic.last)
  end

  test "should show stuffpic" do
    get stuffpic_url(@stuffpic)
    assert_response :success
  end

  test "should get edit" do
    get edit_stuffpic_url(@stuffpic)
    assert_response :success
  end

  test "should update stuffpic" do
    patch stuffpic_url(@stuffpic), params: { stuffpic: { pic: @stuffpic.pic, title: @stuffpic.title } }
    assert_redirected_to stuffpic_url(@stuffpic)
  end

  test "should destroy stuffpic" do
    assert_difference("Stuffpic.count", -1) do
      delete stuffpic_url(@stuffpic)
    end

    assert_redirected_to stuffpics_url
  end
end
