require 'rails_helper'

RSpec.describe "monsters/index", type: :view do
  before(:each) do
    assign(:monsters, [
      Monster.create!(
        name: "Name",
        level: 2,
        description: "MyText",
        character_attribute: nil
      ),
      Monster.create!(
        name: "Name",
        level: 2,
        description: "MyText",
        character_attribute: nil
      )
    ])
  end

  it "renders a list of monsters" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
