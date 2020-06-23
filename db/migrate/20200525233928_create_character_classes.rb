# frozen_string_literal: true

class CreateCharacterClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
