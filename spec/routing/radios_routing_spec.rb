require "spec_helper"

describe RadiosController do
  describe "routing" do

    it "routes to #index" do
      get("/radios").should route_to("radios#index")
    end

    it "routes to #new" do
      get("/radios/new").should route_to("radios#new")
    end

    it "routes to #show" do
      get("/radios/1").should route_to("radios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/radios/1/edit").should route_to("radios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/radios").should route_to("radios#create")
    end

    it "routes to #update" do
      put("/radios/1").should route_to("radios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/radios/1").should route_to("radios#destroy", :id => "1")
    end

  end
end
