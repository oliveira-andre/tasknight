require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      name: "MyString",
      level: 1,
      hp: 1.5,
      mp: 1.5,
      gold: 1,
      character_class: FactoryBot.build(:character_class),
      character_attribute: FactoryBot.build(:character_attribute)
    ))
  end

  it "renders new character form" do
    render
  end
end
