require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      name: "MyString",
      description: "MyText",
      opponent_id: 1,
      finished: false,
      winner_id: 1,
      character: nil
    ))

    user = FactoryBot.build(:user)
    assign(:character, user.character)
  end

  it "renders new task form" do
    render
  end
end
