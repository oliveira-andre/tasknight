class AddCharacterAttributeToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :character_attribute, foreign_key: true
  end
end
