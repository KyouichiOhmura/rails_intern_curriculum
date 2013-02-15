require "spec_helper"

describe TestBoardsController do
  describe "routing" do

    it "routes to #index" do
      get("/test_boards").should route_to("test_boards#index")
    end

    it "routes to #new" do
      get("/test_boards/new").should route_to("test_boards#new")
    end

    it "routes to #show" do
      get("/test_boards/1").should route_to("test_boards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/test_boards/1/edit").should route_to("test_boards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/test_boards").should route_to("test_boards#create")
    end

    it "routes to #update" do
      put("/test_boards/1").should route_to("test_boards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/test_boards/1").should route_to("test_boards#destroy", :id => "1")
    end

  end
end
