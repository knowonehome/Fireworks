require 'rails_helper'

RSpec.describe "fireworks/show", type: :view do
  before(:each) do
    @firework = assign(:firework, Firework.create!(
      :name => "Name",
      :sytle => "Sytle",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sytle/)
    expect(rendered).to match(/Description/)
  end
end
