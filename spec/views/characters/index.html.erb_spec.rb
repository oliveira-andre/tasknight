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
        character_class: ""
      ),
      Character.create!(
        name: "Name",
        level: 2,
        hp: 3.5,
        mp: 4.5,
        gold: 5,
        character_class: ""
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
