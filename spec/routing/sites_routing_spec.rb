require "spec_helper"

describe VideosController do
  describe "routing" do

    it "routes to #index" do
      get("/videos").should route_to("videos#index")
    end

    it "routes to #new" do
      get("/videos/new").should route_to("videos#new")
    end

    it "routes to #edit" do
      get("/videos/1/edit").should route_to("videos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/videos").should route_to("videos#create")
    end

  end
end
