require 'spec_helper'

describe PracticesController do

  def mock_practice(stubs={})
    (@mock_practice ||= mock_model(Practice).as_null_object).tap do |practice|
      practice.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all practices as @practices" do
      Practice.stub(:all) { [mock_practice] }
      get :index
      assigns(:practices).should eq([mock_practice])
    end
  end

  describe "GET show" do
    it "assigns the requested practice as @practice" do
      Practice.stub(:find).with("37") { mock_practice }
      get :show, :id => "37"
      assigns(:practice).should be(mock_practice)
    end
  end

  describe "GET new" do
    it "assigns a new practice as @practice" do
      Practice.stub(:new) { mock_practice }
      get :new
      assigns(:practice).should be(mock_practice)
    end
  end

  describe "GET edit" do
    it "assigns the requested practice as @practice" do
      Practice.stub(:find).with("37") { mock_practice }
      get :edit, :id => "37"
      assigns(:practice).should be(mock_practice)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created practice as @practice" do
        Practice.stub(:new).with({'these' => 'params'}) { mock_practice(:save => true) }
        post :create, :practice => {'these' => 'params'}
        assigns(:practice).should be(mock_practice)
      end

      it "redirects to the created practice" do
        Practice.stub(:new) { mock_practice(:save => true) }
        post :create, :practice => {}
        response.should redirect_to(practice_url(mock_practice))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved practice as @practice" do
        Practice.stub(:new).with({'these' => 'params'}) { mock_practice(:save => false) }
        post :create, :practice => {'these' => 'params'}
        assigns(:practice).should be(mock_practice)
      end

      it "re-renders the 'new' template" do
        Practice.stub(:new) { mock_practice(:save => false) }
        post :create, :practice => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested practice" do
        Practice.should_receive(:find).with("37") { mock_practice }
        mock_practice.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :practice => {'these' => 'params'}
      end

      it "assigns the requested practice as @practice" do
        Practice.stub(:find) { mock_practice(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:practice).should be(mock_practice)
      end

      it "redirects to the practice" do
        Practice.stub(:find) { mock_practice(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(practice_url(mock_practice))
      end
    end

    describe "with invalid params" do
      it "assigns the practice as @practice" do
        Practice.stub(:find) { mock_practice(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:practice).should be(mock_practice)
      end

      it "re-renders the 'edit' template" do
        Practice.stub(:find) { mock_practice(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested practice" do
      Practice.should_receive(:find).with("37") { mock_practice }
      mock_practice.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the practices list" do
      Practice.stub(:find) { mock_practice }
      delete :destroy, :id => "1"
      response.should redirect_to(practices_url)
    end
  end

end
