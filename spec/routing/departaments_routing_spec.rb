require "spec_helper"

describe DepartamentsController do
  describe "routing" do

    it "routes to #index" do
      get("/departaments").should route_to("departaments#index")
    end

    it "routes to #new" do
      get("/departaments/new").should route_to("departaments#new")
    end

    it "routes to #show" do
      get("/departaments/1").should route_to("departaments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/departaments/1/edit").should route_to("departaments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/departaments").should route_to("departaments#create")
    end

    it "routes to #update" do
      put("/departaments/1").should route_to("departaments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/departaments/1").should route_to("departaments#destroy", :id => "1")
    end

  end
end
