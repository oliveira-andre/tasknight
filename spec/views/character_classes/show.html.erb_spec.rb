require 'rails_helper'

RSpec.describe "character_classes/show", type: :view do
  before(:each) do
    @character_class = assign(:character_class, CharacterClass.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
