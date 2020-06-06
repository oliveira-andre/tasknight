class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :characters

  after_create :create_character

  def character
    characters.first
  end

  private

    def create_character
      character_class = CharacterClass.first
      character_attribute = CharacterAttribute.create!(str: 1,
        agi: 1,
        vit: 1,
        int: 1,
        dex: 1,
        luk: 1
      )

      character = Character.create!(name: "Desconhecido",
        level: 1,
        hp: 50,
        mp: 50,
        gold: 0,
        character_class: character_class,
        character_attribute: character_attribute,
        user_id: self.id
      )
    end
end
