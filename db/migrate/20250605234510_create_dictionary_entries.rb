class CreateDictionaryEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :dictionary_entries do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end
