# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'character_attributes/show', type: :view do
  before(:each) do
    @character_attribute = assign(:character_attribute, CharacterAttribute.create!(
                                                          str: 2,
                                                          agi: 3,
                                                          vit: 4,
                                                          int: 5,
                                                          dex: 6,
                                                          luk: 7
                                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
