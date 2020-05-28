require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      name: "MyString",
      description: "MyText",
      opponent_id: 1,
      finished: false,
      winner_id: 1,
      character: nil
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[opponent_id]"

      assert_select "input[name=?]", "task[finished]"

      assert_select "input[name=?]", "task[winner_id]"

      assert_select "input[name=?]", "task[character_id]"
    end
  end
end
