require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      name: "Name",
      description: "MyText",
      opponent_id: 2,
      finished: false,
      winner_id: 3,
      character: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
