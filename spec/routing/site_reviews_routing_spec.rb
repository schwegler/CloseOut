require "spec_helper"

describe SiteReviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/site_reviews").should route_to("site_reviews#index")
    end

    it "routes to #new" do
      get("/site_reviews/new").should route_to("site_reviews#new")
    end

    it "routes to #show" do
      get("/site_reviews/1").should route_to("site_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/site_reviews/1/edit").should route_to("site_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/site_reviews").should route_to("site_reviews#create")
    end

    it "routes to #update" do
      put("/site_reviews/1").should route_to("site_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/site_reviews/1").should route_to("site_reviews#destroy", :id => "1")
    end

  end
end
