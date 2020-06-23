# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/show', type: :view do
  before(:each) do
    user = FactoryBot.build(:user)

    @task = assign(:task, Task.create!(
                            name: 'Name',
                            description: 'MyText',
                            opponent_id: 2,
                            finished: false,
                            winner_id: 3,
                            character: user.character
                          ))
  end

  it 'renders attributes in <p>' do
    render
  end
end
