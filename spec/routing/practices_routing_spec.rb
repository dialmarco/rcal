require "spec_helper"

describe PracticesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/practices" }.should route_to(:controller => "practices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/practices/new" }.should route_to(:controller => "practices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/practices/1" }.should route_to(:controller => "practices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/practices/1/edit" }.should route_to(:controller => "practices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/practices" }.should route_to(:controller => "practices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/practices/1" }.should route_to(:controller => "practices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/practices/1" }.should route_to(:controller => "practices", :action => "destroy", :id => "1")
    end

  end
end
