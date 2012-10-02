require 'spec_helper'

describe "equipmentinracks/index" do
  before(:each) do
    assign(:equipmentinracks, [
      stub_model(Equipmentinrack,
        :cabinet_id => 1,
        :site_id => 2,
        :item => "Item",
        :serialnumber => "Serialnumber"
      ),
      stub_model(Equipmentinrack,
        :cabinet_id => 1,
        :site_id => 2,
        :item => "Item",
        :serialnumber => "Serialnumber"
      )
    ])
  end

  it "renders a list of equipmentinracks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Serialnumber".to_s, :count => 2
  end
end
