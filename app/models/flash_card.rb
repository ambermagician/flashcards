class FlashCard < ApplicationRecord
  validates :word, uniqueness: true
  validate :word_must_exist_in_dictionary
  before_create :populate_definition

  private
  
  def word_must_exist_in_dictionary
    unless DictionaryEntry.exists?(word: word)
      errors.add(:word, "must exist in the dictionary")
    end
  end

  def populate_definition
    entry = DictionaryEntry.find_by(word: word)
    self.definition = entry.definition
  end
end
