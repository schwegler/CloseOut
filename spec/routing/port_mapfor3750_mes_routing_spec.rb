require "spec_helper"

describe PortMapfor3750MesController do
  describe "routing" do

    it "routes to #index" do
      get("/port_mapfor3750_mes").should route_to("port_mapfor3750_mes#index")
    end

    it "routes to #new" do
      get("/port_mapfor3750_mes/new").should route_to("port_mapfor3750_mes#new")
    end

    it "routes to #show" do
      get("/port_mapfor3750_mes/1").should route_to("port_mapfor3750_mes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/port_mapfor3750_mes/1/edit").should route_to("port_mapfor3750_mes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/port_mapfor3750_mes").should route_to("port_mapfor3750_mes#create")
    end

    it "routes to #update" do
      put("/port_mapfor3750_mes/1").should route_to("port_mapfor3750_mes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/port_mapfor3750_mes/1").should route_to("port_mapfor3750_mes#destroy", :id => "1")
    end

  end
end
