# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

character_attribute = CharacterAttribute.create!(str: 1, agi: 1, vit: 1, int: 1, dex: 1, luk: 1)

peasant_class = CharacterClass.create!(name: 'Peasant', description: '...')

character = Character.create!(name: "Resque", level: 1, hp: 50, mp: 50, gold: 0, character_class: CharacterClass.last, character_attribute: CharacterAttribute.last)


monster_attribute = CharacterAttribute.create!(str: 1, agi: 1, vit: 1, int: 1, dex: 1, luk: 1)

Monster.create!(name: 'Goblin', level: 1, description: '...', character_attribute: monster_attribute)
