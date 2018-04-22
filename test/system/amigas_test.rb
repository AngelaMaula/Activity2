require "application_system_test_case"

class AmigasTest < ApplicationSystemTestCase
  setup do
    @amiga = amigas(:one)
  end

  test "visiting the index" do
    visit amigas_url
    assert_selector "h1", text: "Amigas"
  end

  test "creating a Amiga" do
    visit amigas_url
    click_on "New Amiga"

    fill_in "Address", with: @amiga.address
    fill_in "Age", with: @amiga.age
    fill_in "Bday", with: @amiga.bday
    fill_in "Name", with: @amiga.name
    click_on "Create Amiga"

    assert_text "Amiga was successfully created"
    click_on "Back"
  end

  test "updating a Amiga" do
    visit amigas_url
    click_on "Edit", match: :first

    fill_in "Address", with: @amiga.address
    fill_in "Age", with: @amiga.age
    fill_in "Bday", with: @amiga.bday
    fill_in "Name", with: @amiga.name
    click_on "Update Amiga"

    assert_text "Amiga was successfully updated"
    click_on "Back"
  end

  test "destroying a Amiga" do
    visit amigas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Amiga was successfully destroyed"
  end
end
