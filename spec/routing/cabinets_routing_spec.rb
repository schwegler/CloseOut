require "spec_helper"

describe CabinetsController do
  describe "routing" do

    it "routes to #index" do
      get("/cabinets").should route_to("cabinets#index")
    end

    it "routes to #new" do
      get("/cabinets/new").should route_to("cabinets#new")
    end

    it "routes to #show" do
      get("/cabinets/1").should route_to("cabinets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cabinets/1/edit").should route_to("cabinets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cabinets").should route_to("cabinets#create")
    end

    it "routes to #update" do
      put("/cabinets/1").should route_to("cabinets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cabinets/1").should route_to("cabinets#destroy", :id => "1")
    end

  end
end
