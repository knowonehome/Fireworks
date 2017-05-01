require 'rails_helper'

RSpec.describe "fireworks/edit", type: :view do
  before(:each) do
    @firework = assign(:firework, Firework.create!(
      :name => "MyString",
      :sytle => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit firework form" do
    render

    assert_select "form[action=?][method=?]", firework_path(@firework), "post" do

      assert_select "input#firework_name[name=?]", "firework[name]"

      assert_select "input#firework_sytle[name=?]", "firework[sytle]"

      assert_select "input#firework_description[name=?]", "firework[description]"
    end
  end
end
