class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.float :hp
      t.float :mp
      t.integer :gold
      t.bigint :character_class_id
      t.index ["character_class_id"], name: "index_characters_on_character_classes_id"
      t.timestamps
    end
  end
end
