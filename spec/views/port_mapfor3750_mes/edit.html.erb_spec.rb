require 'spec_helper'

describe "port_mapfor3750_mes/edit" do
  before(:each) do
    @port_mapfor3750_me = assign(:port_mapfor3750_me, stub_model(PortMapfor3750Me,
      :cabinet_id => 1,
      :site_id => 1,
      :port => "MyString",
      :connecteddevice => "MyString",
      :swport => "MyString",
      :patchpanelport => "MyString"
    ))
  end

  it "renders the edit port_mapfor3750_me form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => port_mapfor3750_mes_path(@port_mapfor3750_me), :method => "post" do
      assert_select "input#port_mapfor3750_me_cabinet_id", :name => "port_mapfor3750_me[cabinet_id]"
      assert_select "input#port_mapfor3750_me_site_id", :name => "port_mapfor3750_me[site_id]"
      assert_select "input#port_mapfor3750_me_port", :name => "port_mapfor3750_me[port]"
      assert_select "input#port_mapfor3750_me_connecteddevice", :name => "port_mapfor3750_me[connecteddevice]"
      assert_select "input#port_mapfor3750_me_swport", :name => "port_mapfor3750_me[swport]"
      assert_select "input#port_mapfor3750_me_patchpanelport", :name => "port_mapfor3750_me[patchpanelport]"
    end
  end
end
