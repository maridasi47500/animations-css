require "application_system_test_case"

class StuffpicsTest < ApplicationSystemTestCase
  setup do
    @stuffpic = stuffpics(:one)
  end

  test "visiting the index" do
    visit stuffpics_url
    assert_selector "h1", text: "Stuffpics"
  end

  test "should create stuffpic" do
    visit stuffpics_url
    click_on "New stuffpic"

    fill_in "Pic", with: @stuffpic.pic
    fill_in "Title", with: @stuffpic.title
    click_on "Create Stuffpic"

    assert_text "Stuffpic was successfully created"
    click_on "Back"
  end

  test "should update Stuffpic" do
    visit stuffpic_url(@stuffpic)
    click_on "Edit this stuffpic", match: :first

    fill_in "Pic", with: @stuffpic.pic
    fill_in "Title", with: @stuffpic.title
    click_on "Update Stuffpic"

    assert_text "Stuffpic was successfully updated"
    click_on "Back"
  end

  test "should destroy Stuffpic" do
    visit stuffpic_url(@stuffpic)
    click_on "Destroy this stuffpic", match: :first

    assert_text "Stuffpic was successfully destroyed"
  end
end
