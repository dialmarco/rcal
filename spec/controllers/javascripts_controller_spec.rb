require 'spec_helper'

describe JavascriptsController do

  describe "GET 'monthly_practice'" do
    it "should be successful" do
      get 'monthly_practice'
      response.should be_success
    end
  end

end
