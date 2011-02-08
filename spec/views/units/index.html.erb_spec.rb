require 'spec_helper'

describe "units/index.html.erb" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :units => "Units"
      ),
      stub_model(Unit,
        :units => "Units"
      )
    ])
  end

  it "renders a list of units" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Units".to_s, :count => 2
  end
end
