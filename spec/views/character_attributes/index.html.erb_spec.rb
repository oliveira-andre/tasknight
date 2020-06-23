# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'character_attributes/index', type: :view do
  before(:each) do
    assign(:character_attributes, [
             CharacterAttribute.create!(
               str: 2,
               agi: 3,
               vit: 4,
               int: 5,
               dex: 6,
               luk: 7
             ),
             CharacterAttribute.create!(
               str: 2,
               agi: 3,
               vit: 4,
               int: 5,
               dex: 6,
               luk: 7
             )
           ])
  end

  it 'renders a list of character_attributes' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: 5.to_s, count: 2
    assert_select 'tr>td', text: 6.to_s, count: 2
    assert_select 'tr>td', text: 7.to_s, count: 2
  end
end
