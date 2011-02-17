require 'spec_helper'

describe StatisticsController do

  describe "GET 'month'" do
    it "should be successful" do
      get 'month'
      response.should be_success
    end
  end

end
