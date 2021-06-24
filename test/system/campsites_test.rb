require "application_system_test_case"

class CampsitesTest < ApplicationSystemTestCase
  setup do
    @campsite = campsites(:one)
  end

  test "visiting the index" do
    visit campsites_url
    assert_selector "h1", text: "Campsites"
  end

  test "creating a Campsite" do
    visit campsites_url
    click_on "New Campsite"

    fill_in "Campsite name", with: @campsite.campsite_name
    click_on "Create Campsite"

    assert_text "Campsite was successfully created"
    click_on "Back"
  end

  test "updating a Campsite" do
    visit campsites_url
    click_on "Edit", match: :first

    fill_in "Campsite name", with: @campsite.campsite_name
    click_on "Update Campsite"

    assert_text "Campsite was successfully updated"
    click_on "Back"
  end

  test "destroying a Campsite" do
    visit campsites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campsite was successfully destroyed"
  end
end
