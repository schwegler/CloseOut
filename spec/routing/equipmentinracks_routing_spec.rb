require "spec_helper"

describe EquipmentinracksController do
  describe "routing" do

    it "routes to #index" do
      get("/equipmentinracks").should route_to("equipmentinracks#index")
    end

    it "routes to #new" do
      get("/equipmentinracks/new").should route_to("equipmentinracks#new")
    end

    it "routes to #show" do
      get("/equipmentinracks/1").should route_to("equipmentinracks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipmentinracks/1/edit").should route_to("equipmentinracks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipmentinracks").should route_to("equipmentinracks#create")
    end

    it "routes to #update" do
      put("/equipmentinracks/1").should route_to("equipmentinracks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipmentinracks/1").should route_to("equipmentinracks#destroy", :id => "1")
    end

  end
end
