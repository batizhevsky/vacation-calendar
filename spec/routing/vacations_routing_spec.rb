require "spec_helper"

describe VacationsController do
  describe "routing" do

    it "routes to #index" do
      get("/vacations").should route_to("vacations#index")
    end

    it "routes to #new" do
      get("/vacations/new").should route_to("vacations#new")
    end

    it "routes to #show" do
      get("/vacations/1").should route_to("vacations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vacations/1/edit").should route_to("vacations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vacations").should route_to("vacations#create")
    end

    it "routes to #update" do
      put("/vacations/1").should route_to("vacations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vacations/1").should route_to("vacations#destroy", :id => "1")
    end

  end
end
