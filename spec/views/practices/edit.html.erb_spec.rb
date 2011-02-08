require 'spec_helper'

describe "practices/edit.html.erb" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :new_record? => false,
      :name => "MyString",
      :description => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => practice_path(@practice), :method => "post" do
      assert_select "input#practice_name", :name => "practice[name]"
      assert_select "input#practice_description", :name => "practice[description]"
      assert_select "input#practice_acronym", :name => "practice[acronym]"
    end
  end
end
