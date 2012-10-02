require 'spec_helper'

describe "Equipmentinracks" do
  describe "GET /equipmentinracks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get equipmentinracks_path
      response.status.should be(200)
    end
  end
end
