require 'spec_helper'

describe "cabinets/index" do
  before(:each) do
    assign(:cabinets, [
      stub_model(Cabinet,
        :site_id => "",
        :onraisedplatformpadpicture => false,
        :cablingfromcabinetacrossicebridgepicture => false,
        :patchcablingpicture => false,
        :labelsonequippicture => false,
        :dressedcablespicture => false
      ),
      stub_model(Cabinet,
        :site_id => "",
        :onraisedplatformpadpicture => false,
        :cablingfromcabinetacrossicebridgepicture => false,
        :patchcablingpicture => false,
        :labelsonequippicture => false,
        :dressedcablespicture => false
      )
    ])
  end

  it "renders a list of cabinets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
