require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        name: "Name",
        level: 2,
        hp: 3.5,
        mp: 4.5,
        gold: 5,
        character_class: FactoryBot.build(:character_class),
        character_attribute: FactoryBot.build(:character_attribute)
      ),
      Character.create!(
        name: "Name",
        level: 2,
        hp: 3.5,
        mp: 4.5,
        gold: 5,
        character_class: FactoryBot.build(:character_class),
        character_attribute: FactoryBot.build(:character_attribute)
      )
    ])
  end

  it "renders a list of characters" do
    render
  end
end
