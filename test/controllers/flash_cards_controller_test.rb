require "test_helper"

class FlashCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flash_card = flash_cards(:one)
  end

  test "should get index" do
    get flash_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_flash_card_url
    assert_response :success
  end

  test "should create flash_card" do
    assert_difference("FlashCard.count") do
      post flash_cards_url, params: { flash_card: { word: "cat" } }
    end

    assert_redirected_to flash_card_url(FlashCard.last)
  end

  test "should not create flash_card with no wordnet definition" do
    assert_no_difference("FlashCard.count") do
      post flash_cards_url, params: { flash_card: { word: "nonexistentwordxyzabc" } }
    end

    assert_response :unprocessable_entity
  end

  test "should show flash_card" do
    get flash_card_url(@flash_card)
    assert_response :success
  end

  test "should destroy flash_card" do
    assert_difference("FlashCard.count", -1) do
      delete flash_card_url(@flash_card)
    end

    assert_redirected_to flash_cards_url
  end
end
