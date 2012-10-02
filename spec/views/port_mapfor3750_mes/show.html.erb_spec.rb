require 'spec_helper'

describe "port_mapfor3750_mes/show" do
  before(:each) do
    @port_mapfor3750_me = assign(:port_mapfor3750_me, stub_model(PortMapfor3750Me,
      :cabinet_id => 1,
      :site_id => 2,
      :port => "Port",
      :connecteddevice => "Connecteddevice",
      :swport => "Swport",
      :patchpanelport => "Patchpanelport"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Port/)
    rendered.should match(/Connecteddevice/)
    rendered.should match(/Swport/)
    rendered.should match(/Patchpanelport/)
  end
end
