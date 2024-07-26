require "application_system_test_case"

class MaatchesTest < ApplicationSystemTestCase
  setup do
    @maatch = maatches(:one)
  end

  test "visiting the index" do
    visit maatches_url
    assert_selector "h1", text: "Maatches"
  end

  test "should create maatch" do
    visit maatches_url
    click_on "New maatch"

    fill_in "Away team", with: @maatch.away_team_id
    fill_in "Date", with: @maatch.date
    fill_in "Home team", with: @maatch.home_team_id
    fill_in "Location", with: @maatch.location
    click_on "Create Maatch"

    assert_text "Maatch was successfully created"
    click_on "Back"
  end

  test "should update Maatch" do
    visit maatch_url(@maatch)
    click_on "Edit this maatch", match: :first

    fill_in "Away team", with: @maatch.away_team_id
    fill_in "Date", with: @maatch.date
    fill_in "Home team", with: @maatch.home_team_id
    fill_in "Location", with: @maatch.location
    click_on "Update Maatch"

    assert_text "Maatch was successfully updated"
    click_on "Back"
  end

  test "should destroy Maatch" do
    visit maatch_url(@maatch)
    click_on "Destroy this maatch", match: :first

    assert_text "Maatch was successfully destroyed"
  end
end
