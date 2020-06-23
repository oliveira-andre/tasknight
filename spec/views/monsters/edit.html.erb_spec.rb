# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'monsters/edit', type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
                                  name: 'MyString',
                                  level: 1,
                                  description: 'MyText',
                                  character_attribute: FactoryBot.build(:character_attribute)
                                ))
  end

  it 'renders the edit monster form' do
    render

    assert_select 'form[action=?][method=?]', monster_path(@monster), 'post' do
      assert_select 'input[name=?]', 'monster[name]'

      assert_select 'input[name=?]', 'monster[level]'

      assert_select 'textarea[name=?]', 'monster[description]'

      assert_select 'input[name=?]', 'monster[character_attribute_id]'
    end
  end
end
