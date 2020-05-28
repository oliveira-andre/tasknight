require 'rails_helper'

RSpec.describe "character_classes/index", type: :view do
  before(:each) do
    assign(:character_classes, [
      CharacterClass.create!(
        name: "Name",
        description: "MyText"
      ),
      CharacterClass.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of character_classes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
