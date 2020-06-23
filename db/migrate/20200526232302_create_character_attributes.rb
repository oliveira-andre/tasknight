# frozen_string_literal: true

class CreateCharacterAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :character_attributes do |t|
      t.integer :str
      t.integer :agi
      t.integer :vit
      t.integer :int
      t.integer :dex
      t.integer :luk

      t.timestamps
    end
  end
end
