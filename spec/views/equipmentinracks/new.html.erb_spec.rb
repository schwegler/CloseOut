require 'spec_helper'

describe "equipmentinracks/new" do
  before(:each) do
    assign(:equipmentinrack, stub_model(Equipmentinrack,
      :cabinet_id => 1,
      :site_id => 1,
      :item => "MyString",
      :serialnumber => "MyString"
    ).as_new_record)
  end

  it "renders new equipmentinrack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipmentinracks_path, :method => "post" do
      assert_select "input#equipmentinrack_cabinet_id", :name => "equipmentinrack[cabinet_id]"
      assert_select "input#equipmentinrack_site_id", :name => "equipmentinrack[site_id]"
      assert_select "input#equipmentinrack_item", :name => "equipmentinrack[item]"
      assert_select "input#equipmentinrack_serialnumber", :name => "equipmentinrack[serialnumber]"
    end
  end
end
