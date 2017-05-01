require 'rails_helper'

RSpec.describe "fireworks/new", type: :view do
  before(:each) do
    assign(:firework, Firework.new(
      :name => "MyString",
      :sytle => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new firework form" do
    render

    assert_select "form[action=?][method=?]", fireworks_path, "post" do

      assert_select "input#firework_name[name=?]", "firework[name]"

      assert_select "input#firework_sytle[name=?]", "firework[sytle]"

      assert_select "input#firework_description[name=?]", "firework[description]"
    end
  end
end
