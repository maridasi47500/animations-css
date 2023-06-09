require "application_system_test_case"

class PlacepicsTest < ApplicationSystemTestCase
  setup do
    @placepic = placepics(:one)
  end

  test "visiting the index" do
    visit placepics_url
    assert_selector "h1", text: "Placepics"
  end

  test "should create placepic" do
    visit placepics_url
    click_on "New placepic"

    fill_in "Pic", with: @placepic.pic
    fill_in "Title", with: @placepic.title
    click_on "Create Placepic"

    assert_text "Placepic was successfully created"
    click_on "Back"
  end

  test "should update Placepic" do
    visit placepic_url(@placepic)
    click_on "Edit this placepic", match: :first

    fill_in "Pic", with: @placepic.pic
    fill_in "Title", with: @placepic.title
    click_on "Update Placepic"

    assert_text "Placepic was successfully updated"
    click_on "Back"
  end

  test "should destroy Placepic" do
    visit placepic_url(@placepic)
    click_on "Destroy this placepic", match: :first

    assert_text "Placepic was successfully destroyed"
  end
end
