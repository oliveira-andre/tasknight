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
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[opponent_id]"

      assert_select "input[name=?]", "task[finished]"

      assert_select "input[name=?]", "task[winner_id]"

      assert_select "input[name=?]", "task[character_id]"
    end
  end
end
