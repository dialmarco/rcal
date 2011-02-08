require "spec_helper"

describe PracticeUnitsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/practice_units" }.should route_to(:controller => "practice_units", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/practice_units/new" }.should route_to(:controller => "practice_units", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/practice_units/1" }.should route_to(:controller => "practice_units", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/practice_units/1/edit" }.should route_to(:controller => "practice_units", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/practice_units" }.should route_to(:controller => "practice_units", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/practice_units/1" }.should route_to(:controller => "practice_units", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/practice_units/1" }.should route_to(:controller => "practice_units", :action => "destroy", :id => "1")
    end

  end
end
