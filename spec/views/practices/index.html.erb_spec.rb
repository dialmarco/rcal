require 'spec_helper'

describe "practices/index.html.erb" do
  before(:each) do
    assign(:practices, [
      stub_model(Practice,
        :name => "Name",
        :description => "Description",
        :acronym => "Acronym"
      ),
      stub_model(Practice,
        :name => "Name",
        :description => "Description",
        :acronym => "Acronym"
      )
    ])
  end

  it "renders a list of practices" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
  end
end
