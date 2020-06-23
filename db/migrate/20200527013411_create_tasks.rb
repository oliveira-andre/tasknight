# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :opponent_id
      t.boolean :finished
      t.integer :winner_id
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
