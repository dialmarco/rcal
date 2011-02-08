require 'spec_helper'

describe PracticeUnitsController do

  def mock_practice_unit(stubs={})
    (@mock_practice_unit ||= mock_model(PracticeUnit).as_null_object).tap do |practice_unit|
      practice_unit.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all practice_units as @practice_units" do
      PracticeUnit.stub(:all) { [mock_practice_unit] }
      get :index
      assigns(:practice_units).should eq([mock_practice_unit])
    end
  end

  describe "GET show" do
    it "assigns the requested practice_unit as @practice_unit" do
      PracticeUnit.stub(:find).with("37") { mock_practice_unit }
      get :show, :id => "37"
      assigns(:practice_unit).should be(mock_practice_unit)
    end
  end

  describe "GET new" do
    it "assigns a new practice_unit as @practice_unit" do
      PracticeUnit.stub(:new) { mock_practice_unit }
      get :new
      assigns(:practice_unit).should be(mock_practice_unit)
    end
  end

  describe "GET edit" do
    it "assigns the requested practice_unit as @practice_unit" do
      PracticeUnit.stub(:find).with("37") { mock_practice_unit }
      get :edit, :id => "37"
      assigns(:practice_unit).should be(mock_practice_unit)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created practice_unit as @practice_unit" do
        PracticeUnit.stub(:new).with({'these' => 'params'}) { mock_practice_unit(:save => true) }
        post :create, :practice_unit => {'these' => 'params'}
        assigns(:practice_unit).should be(mock_practice_unit)
      end

      it "redirects to the created practice_unit" do
        PracticeUnit.stub(:new) { mock_practice_unit(:save => true) }
        post :create, :practice_unit => {}
        response.should redirect_to(practice_unit_url(mock_practice_unit))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved practice_unit as @practice_unit" do
        PracticeUnit.stub(:new).with({'these' => 'params'}) { mock_practice_unit(:save => false) }
        post :create, :practice_unit => {'these' => 'params'}
        assigns(:practice_unit).should be(mock_practice_unit)
      end

      it "re-renders the 'new' template" do
        PracticeUnit.stub(:new) { mock_practice_unit(:save => false) }
        post :create, :practice_unit => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested practice_unit" do
        PracticeUnit.should_receive(:find).with("37") { mock_practice_unit }
        mock_practice_unit.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :practice_unit => {'these' => 'params'}
      end

      it "assigns the requested practice_unit as @practice_unit" do
        PracticeUnit.stub(:find) { mock_practice_unit(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:practice_unit).should be(mock_practice_unit)
      end

      it "redirects to the practice_unit" do
        PracticeUnit.stub(:find) { mock_practice_unit(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(practice_unit_url(mock_practice_unit))
      end
    end

    describe "with invalid params" do
      it "assigns the practice_unit as @practice_unit" do
        PracticeUnit.stub(:find) { mock_practice_unit(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:practice_unit).should be(mock_practice_unit)
      end

      it "re-renders the 'edit' template" do
        PracticeUnit.stub(:find) { mock_practice_unit(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested practice_unit" do
      PracticeUnit.should_receive(:find).with("37") { mock_practice_unit }
      mock_practice_unit.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the practice_units list" do
      PracticeUnit.stub(:find) { mock_practice_unit }
      delete :destroy, :id => "1"
      response.should redirect_to(practice_units_url)
    end
  end

end
