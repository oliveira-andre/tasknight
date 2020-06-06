require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    user = FactoryBot.build(:user)

    assign(:tasks, [
      Task.create!(
        name: "Name",
        description: "MyText",
        opponent_id: 2,
        finished: false,
        winner_id: 3,
        character: user.character
      ),
      Task.create!(
        name: "Name",
        description: "MyText",
        opponent_id: 2,
        finished: false,
        winner_id: 3,
        character: user.character
      )
    ])
  end

  it "renders a list of tasks" do
    render
  end
end
