require "application_system_test_case"

class RegistersTest < ApplicationSystemTestCase
  setup do
    @register = registers(:one)
  end

  test "visiting the index" do
    visit registers_url
    assert_selector "h1", text: "Registers"
  end

  test "should create register" do
    visit registers_url
    click_on "New register"

    fill_in "Registrationdate", with: @register.registrationDate
    fill_in "Registrationtime", with: @register.registrationTime
    click_on "Create Register"

    assert_text "Register was successfully created"
    click_on "Back"
  end

  test "should update Register" do
    visit register_url(@register)
    click_on "Edit this register", match: :first

    fill_in "Registrationdate", with: @register.registrationDate
    fill_in "Registrationtime", with: @register.registrationTime
    click_on "Update Register"

    assert_text "Register was successfully updated"
    click_on "Back"
  end

  test "should destroy Register" do
    visit register_url(@register)
    click_on "Destroy this register", match: :first

    assert_text "Register was successfully destroyed"
  end
end
