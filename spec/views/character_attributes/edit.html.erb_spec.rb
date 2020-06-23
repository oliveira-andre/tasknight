# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'character_attributes/edit', type: :view do
  before(:each) do
    @character_attribute = assign(:character_attribute, CharacterAttribute.create!(
                                                          str: 1,
                                                          agi: 1,
                                                          vit: 1,
                                                          int: 1,
                                                          dex: 1,
                                                          luk: 1
                                                        ))
  end

  it 'renders the edit character_attribute form' do
    render

    assert_select 'form[action=?][method=?]', character_attribute_path(@character_attribute), 'post' do
      assert_select 'input[name=?]', 'character_attribute[str]'

      assert_select 'input[name=?]', 'character_attribute[agi]'

      assert_select 'input[name=?]', 'character_attribute[vit]'

      assert_select 'input[name=?]', 'character_attribute[int]'

      assert_select 'input[name=?]', 'character_attribute[dex]'

      assert_select 'input[name=?]', 'character_attribute[luk]'
    end
  end
end
