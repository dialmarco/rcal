require 'spec_helper'

describe "practices/new.html.erb" do
  before(:each) do
    assign(:practice, stub_model(Practice,
      :name => "MyString",
      :description => "MyString",
      :acronym => "MyString"
    ).as_new_record)
  end

  it "renders new practice form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => practices_path, :method => "post" do
      assert_select "input#practice_name", :name => "practice[name]"
      assert_select "input#practice_description", :name => "practice[description]"
      assert_select "input#practice_acronym", :name => "practice[acronym]"
    end
  end
end
