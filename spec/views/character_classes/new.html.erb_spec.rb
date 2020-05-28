require 'rails_helper'

RSpec.describe "character_classes/new", type: :view do
  before(:each) do
    assign(:character_class, CharacterClass.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new character_class form" do
    render

    assert_select "form[action=?][method=?]", character_classes_path, "post" do

      assert_select "input[name=?]", "character_class[name]"

      assert_select "textarea[name=?]", "character_class[description]"
    end
  end
end
