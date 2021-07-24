require "test_helper"

class TaxBracketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_bracket = tax_brackets(:one)
  end

  test "should get index" do
    get tax_brackets_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_bracket_url
    assert_response :success
  end

  test "should create tax_bracket" do
    assert_difference('TaxBracket.count') do
      post tax_brackets_url, params: { tax_bracket: { level: @tax_bracket.level, rate: @tax_bracket.rate } }
    end

    assert_redirected_to tax_bracket_url(TaxBracket.last)
  end

  test "should show tax_bracket" do
    get tax_bracket_url(@tax_bracket)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_bracket_url(@tax_bracket)
    assert_response :success
  end

  test "should update tax_bracket" do
    patch tax_bracket_url(@tax_bracket), params: { tax_bracket: { level: @tax_bracket.level, rate: @tax_bracket.rate } }
    assert_redirected_to tax_bracket_url(@tax_bracket)
  end

  test "should destroy tax_bracket" do
    assert_difference('TaxBracket.count', -1) do
      delete tax_bracket_url(@tax_bracket)
    end

    assert_redirected_to tax_brackets_url
  end
end
