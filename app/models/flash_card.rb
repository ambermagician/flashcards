require 'rwordnet'

class FlashCard < ApplicationRecord
  validates :word, uniqueness: true
  validates :definition, presence: true
  before_validation :populate_definition, on: :create

  private
  
  def populate_definition
    entries = WordNet::Synset.find_all(word)
    if entries.present?
      definitions = entries.map(&:gloss)
      self.definition = definitions.join("\n") if definitions.any?
    else
      self.definition = nil
    end
  end
end
