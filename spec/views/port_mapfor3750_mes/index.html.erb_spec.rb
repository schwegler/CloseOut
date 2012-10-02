require 'spec_helper'

describe "port_mapfor3750_mes/index" do
  before(:each) do
    assign(:port_mapfor3750_mes, [
      stub_model(PortMapfor3750Me,
        :cabinet_id => 1,
        :site_id => 2,
        :port => "Port",
        :connecteddevice => "Connecteddevice",
        :swport => "Swport",
        :patchpanelport => "Patchpanelport"
      ),
      stub_model(PortMapfor3750Me,
        :cabinet_id => 1,
        :site_id => 2,
        :port => "Port",
        :connecteddevice => "Connecteddevice",
        :swport => "Swport",
        :patchpanelport => "Patchpanelport"
      )
    ])
  end

  it "renders a list of port_mapfor3750_mes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Port".to_s, :count => 2
    assert_select "tr>td", :text => "Connecteddevice".to_s, :count => 2
    assert_select "tr>td", :text => "Swport".to_s, :count => 2
    assert_select "tr>td", :text => "Patchpanelport".to_s, :count => 2
  end
end
