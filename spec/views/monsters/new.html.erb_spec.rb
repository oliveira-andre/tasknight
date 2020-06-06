require 'rails_helper'

RSpec.describe "monsters/new", type: :view do
  before(:each) do
    assign(:monster, Monster.new(
      name: "MyString",
      level: 1,
      description: "MyText",
      character_attribute: FactoryBot.build(:character_attribute)
    ))
  end

  it "renders new monster form" do
    render

    assert_select "form[action=?][method=?]", monsters_path, "post" do

      assert_select "input[name=?]", "monster[name]"

      assert_select "input[name=?]", "monster[level]"

      assert_select "textarea[name=?]", "monster[description]"

      assert_select "input[name=?]", "monster[character_attribute_id]"
    end
  end
end
