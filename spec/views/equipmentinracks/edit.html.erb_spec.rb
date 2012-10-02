require 'spec_helper'

describe "equipmentinracks/edit" do
  before(:each) do
    @equipmentinrack = assign(:equipmentinrack, stub_model(Equipmentinrack,
      :cabinet_id => 1,
      :site_id => 1,
      :item => "MyString",
      :serialnumber => "MyString"
    ))
  end

  it "renders the edit equipmentinrack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipmentinracks_path(@equipmentinrack), :method => "post" do
      assert_select "input#equipmentinrack_cabinet_id", :name => "equipmentinrack[cabinet_id]"
      assert_select "input#equipmentinrack_site_id", :name => "equipmentinrack[site_id]"
      assert_select "input#equipmentinrack_item", :name => "equipmentinrack[item]"
      assert_select "input#equipmentinrack_serialnumber", :name => "equipmentinrack[serialnumber]"
    end
  end
end
