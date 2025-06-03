require "application_system_test_case"

class FlashCardsTest < ApplicationSystemTestCase
  setup do
    @flash_card = flash_cards(:one)
  end

  test "visiting the index" do
    visit flash_cards_url
    assert_selector "h1", text: "Flash cards"
  end

  test "should create flash card" do
    visit flash_cards_url
    click_on "New flash card"

    fill_in "Definition", with: @flash_card.definition
    fill_in "Word", with: @flash_card.word
    click_on "Create Flash card"

    assert_text "Flash card was successfully created"
    click_on "Back"
  end

  test "should update Flash card" do
    visit flash_card_url(@flash_card)
    click_on "Edit this flash card", match: :first

    fill_in "Definition", with: @flash_card.definition
    fill_in "Word", with: @flash_card.word
    click_on "Update Flash card"

    assert_text "Flash card was successfully updated"
    click_on "Back"
  end

  test "should destroy Flash card" do
    visit flash_card_url(@flash_card)
    click_on "Destroy this flash card", match: :first

    assert_text "Flash card was successfully destroyed"
  end
end
