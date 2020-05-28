class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :level
      t.text :description
      t.references :character_attribute, foreign_key: true

      t.timestamps
    end
  end
end
