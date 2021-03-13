require "application_system_test_case"

class Employee1sTest < ApplicationSystemTestCase
  setup do
    @employee1 = employee1s(:one)
  end

  test "visiting the index" do
    visit employee1s_url
    assert_selector "h1", text: "Employee1s"
  end

  test "creating a Employee1" do
    visit employee1s_url
    click_on "New Employee1"

    fill_in "Address", with: @employee1.address
    fill_in "First name", with: @employee1.first_name
    fill_in "Last name", with: @employee1.last_name
    fill_in "Phone number", with: @employee1.phone_number
    click_on "Create Employee1"

    assert_text "Employee1 was successfully created"
    click_on "Back"
  end

  test "updating a Employee1" do
    visit employee1s_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee1.address
    fill_in "First name", with: @employee1.first_name
    fill_in "Last name", with: @employee1.last_name
    fill_in "Phone number", with: @employee1.phone_number
    click_on "Update Employee1"

    assert_text "Employee1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee1" do
    visit employee1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee1 was successfully destroyed"
  end
end
