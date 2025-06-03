require "test_helper"

class FlashCardTest < ActiveSupport::TestCase
  test "should not create flash card with no wordnet definition" do
    card = FlashCard.new(word: "nonexistentwordxyzabc")
    assert_not card.save, "Saved a flash card with no WordNet definition"
    assert_includes card.errors[:definition], "can't be blank"
  end

  test "should create flash card with valid wordnet definition" do
    card = FlashCard.new(word: "cat")
    assert card.save, "Did not save a flash card with a valid WordNet definition"
    assert card.definition.present?, "Definition should be present"
  end
end
