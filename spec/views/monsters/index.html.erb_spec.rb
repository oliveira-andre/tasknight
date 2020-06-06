require 'rails_helper'

RSpec.describe "monsters/index", type: :view do
  before(:each) do
    assign(:monsters, [
      Monster.create!(
        name: "Name",
        level: 2,
        description: "MyText",
        character_attribute: FactoryBot.build(:character_attribute)
      ),
      Monster.create!(
        name: "Name",
        level: 2,
        description: "MyText",
        character_attribute: FactoryBot.build(:character_attribute)
      )
    ])
  end

  it "renders a list of monsters" do
    render
  end
end
