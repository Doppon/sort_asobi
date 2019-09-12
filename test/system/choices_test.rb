require "application_system_test_case"

class ChoicesTest < ApplicationSystemTestCase
  setup do
    @choice = choices(:one)
  end

  test "visiting the index" do
    visit choices_url
    assert_selector "h1", text: "Choices"
  end

  test "creating a Choice" do
    visit choices_url
    click_on "New Choice"

    check "Is answer" if @choice.is_answer
    fill_in "Name", with: @choice.name
    fill_in "Word", with: @choice.word_id
    click_on "Create Choice"

    assert_text "Choice was successfully created"
    click_on "Back"
  end

  test "updating a Choice" do
    visit choices_url
    click_on "Edit", match: :first

    check "Is answer" if @choice.is_answer
    fill_in "Name", with: @choice.name
    fill_in "Word", with: @choice.word_id
    click_on "Update Choice"

    assert_text "Choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Choice" do
    visit choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choice was successfully destroyed"
  end
end
