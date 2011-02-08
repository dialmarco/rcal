require 'spec_helper'

describe "practices/show.html.erb" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :name => "Name",
      :description => "Description",
      :acronym => "Acronym"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Acronym/)
  end
end
