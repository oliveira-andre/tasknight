require "rails_helper"

RSpec.describe CharacterAttributesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/character_attributes").to route_to("character_attributes#index")
    end

    it "routes to #new" do
      expect(get: "/character_attributes/new").to route_to("character_attributes#new")
    end

    it "routes to #show" do
      expect(get: "/character_attributes/1").to route_to("character_attributes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/character_attributes/1/edit").to route_to("character_attributes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/character_attributes").to route_to("character_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/character_attributes/1").to route_to("character_attributes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/character_attributes/1").to route_to("character_attributes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/character_attributes/1").to route_to("character_attributes#destroy", id: "1")
    end
  end
end
