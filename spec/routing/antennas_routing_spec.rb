require "spec_helper"

describe AntennasController do
  describe "routing" do

    it "routes to #index" do
      get("/antennas").should route_to("antennas#index")
    end

    it "routes to #new" do
      get("/antennas/new").should route_to("antennas#new")
    end

    it "routes to #show" do
      get("/antennas/1").should route_to("antennas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/antennas/1/edit").should route_to("antennas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/antennas").should route_to("antennas#create")
    end

    it "routes to #update" do
      put("/antennas/1").should route_to("antennas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/antennas/1").should route_to("antennas#destroy", :id => "1")
    end

  end
end
