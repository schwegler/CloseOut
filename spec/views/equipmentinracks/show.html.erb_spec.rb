require 'spec_helper'

describe "equipmentinracks/show" do
  before(:each) do
    @equipmentinrack = assign(:equipmentinrack, stub_model(Equipmentinrack,
      :cabinet_id => 1,
      :site_id => 2,
      :item => "Item",
      :serialnumber => "Serialnumber"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Item/)
    rendered.should match(/Serialnumber/)
  end
end
