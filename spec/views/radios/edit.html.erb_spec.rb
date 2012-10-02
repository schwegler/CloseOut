require 'spec_helper'

describe "radios/edit" do
  before(:each) do
    @radio = assign(:radio, stub_model(Radio,
      :name => "MyString",
      :desc => "MyText",
      :tower_id => 1
    ))
  end

  it "renders the edit radio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => radios_path(@radio), :method => "post" do
      assert_select "input#radio_name", :name => "radio[name]"
      assert_select "textarea#radio_desc", :name => "radio[desc]"
      assert_select "input#radio_tower_id", :name => "radio[tower_id]"
    end
  end
end
