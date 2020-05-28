require 'rails_helper'

RSpec.describe "character_classes/edit", type: :view do
  before(:each) do
    @character_class = assign(:character_class, CharacterClass.create!(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit character_class form" do
    render

    assert_select "form[action=?][method=?]", character_class_path(@character_class), "post" do

      assert_select "input[name=?]", "character_class[name]"

      assert_select "textarea[name=?]", "character_class[description]"
    end
  end
end
