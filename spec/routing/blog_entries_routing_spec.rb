require "spec_helper"

describe BlogEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/blog_entries").should route_to("blog_entries#index")
    end

    it "routes to #new" do
      get("/blog_entries/new").should route_to("blog_entries#new")
    end

    it "routes to #show" do
      get("/blog_entries/1").should route_to("blog_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blog_entries/1/edit").should route_to("blog_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blog_entries").should route_to("blog_entries#create")
    end

    it "routes to #update" do
      put("/blog_entries/1").should route_to("blog_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blog_entries/1").should route_to("blog_entries#destroy", :id => "1")
    end

  end
end
