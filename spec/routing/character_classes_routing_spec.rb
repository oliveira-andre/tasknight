require "rails_helper"

RSpec.describe CharacterClassesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/character_classes").to route_to("character_classes#index")
    end

    it "routes to #new" do
      expect(get: "/character_classes/new").to route_to("character_classes#new")
    end

    it "routes to #show" do
      expect(get: "/character_classes/1").to route_to("character_classes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/character_classes/1/edit").to route_to("character_classes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/character_classes").to route_to("character_classes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/character_classes/1").to route_to("character_classes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/character_classes/1").to route_to("character_classes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/character_classes/1").to route_to("character_classes#destroy", id: "1")
    end
  end
end
