require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      name: "MyString",
      level: 1,
      hp: 1.5,
      mp: 1.5,
      gold: 1,
      character_class: FactoryBot.build(:character_class),
      character_attribute: FactoryBot.build(:character_attribute)
    ))
  end

  it "renders the edit character form" do
    render
  end
end
