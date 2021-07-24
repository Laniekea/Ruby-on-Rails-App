require "application_system_test_case"

class TaxBracketsTest < ApplicationSystemTestCase
  setup do
    @tax_bracket = tax_brackets(:one)
  end

  test "visiting the index" do
    visit tax_brackets_url
    assert_selector "h1", text: "Tax Brackets"
  end

  test "creating a Tax bracket" do
    visit tax_brackets_url
    click_on "New Tax Bracket"

    fill_in "Level", with: @tax_bracket.level
    fill_in "Rate", with: @tax_bracket.rate
    click_on "Create Tax bracket"

    assert_text "Tax bracket was successfully created"
    click_on "Back"
  end

  test "updating a Tax bracket" do
    visit tax_brackets_url
    click_on "Edit", match: :first

    fill_in "Level", with: @tax_bracket.level
    fill_in "Rate", with: @tax_bracket.rate
    click_on "Update Tax bracket"

    assert_text "Tax bracket was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax bracket" do
    visit tax_brackets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax bracket was successfully destroyed"
  end
end
