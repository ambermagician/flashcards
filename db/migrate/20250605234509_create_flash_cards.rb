class CreateFlashCards < ActiveRecord::Migration[8.0]
  def change
    create_table :flash_cards do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end
