# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/edit', type: :view do
  before(:each) do
    user = FactoryBot.build(:user)
    @task = assign(:task, Task.create!(
                            name: 'MyString',
                            description: 'MyText',
                            opponent_id: 1,
                            finished: false,
                            winner_id: 1,
                            character: user.character
                          ))
  end

  it 'renders the edit task form' do
    render
  end
end
