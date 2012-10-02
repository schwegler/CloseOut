require 'spec_helper'

describe "PortMapfor3750Mes" do
  describe "GET /port_mapfor3750_mes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get port_mapfor3750_mes_path
      response.status.should be(200)
    end
  end
end
