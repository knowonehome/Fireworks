require 'rails_helper'

RSpec.describe "fireworks/index", type: :view do
  before(:each) do
    assign(:fireworks, [
      Firework.create!(
        :name => "Name",
        :sytle => "Sytle",
        :description => "Description"
      ),
      Firework.create!(
        :name => "Name",
        :sytle => "Sytle",
        :description => "Description"
      )
    ])
  end

  it "renders a list of fireworks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sytle".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
