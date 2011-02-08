require 'spec_helper'

describe "units/edit.html.erb" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :new_record? => false,
      :units => "MyString"
    ))
  end

  it "renders the edit unit form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => unit_path(@unit), :method => "post" do
      assert_select "input#unit_units", :name => "unit[units]"
    end
  end
end
