require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      name: "MyString",
      level: 1,
      hp: 1.5,
      mp: 1.5,
      gold: 1,
      character_class: ""
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[level]"

      assert_select "input[name=?]", "character[hp]"

      assert_select "input[name=?]", "character[mp]"

      assert_select "input[name=?]", "character[gold]"

      assert_select "input[name=?]", "character[character_class]"
    end
  end
end
