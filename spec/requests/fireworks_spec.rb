require 'rails_helper'

RSpec.describe "Fireworks", type: :request do
  describe "GET /fireworks" do
    it "works! (now write some real specs)" do
      get fireworks_path
      expect(response).to have_http_status(200)
    end
  end
end
