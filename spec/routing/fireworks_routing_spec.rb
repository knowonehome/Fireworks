require "rails_helper"

RSpec.describe FireworksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fireworks").to route_to("fireworks#index")
    end

    it "routes to #new" do
      expect(:get => "/fireworks/new").to route_to("fireworks#new")
    end

    it "routes to #show" do
      expect(:get => "/fireworks/1").to route_to("fireworks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fireworks/1/edit").to route_to("fireworks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fireworks").to route_to("fireworks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fireworks/1").to route_to("fireworks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fireworks/1").to route_to("fireworks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fireworks/1").to route_to("fireworks#destroy", :id => "1")
    end

  end
end
