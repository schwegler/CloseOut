require 'spec_helper'

describe "cabinets/edit" do
  before(:each) do
    @cabinet = assign(:cabinet, stub_model(Cabinet,
      :site_id => "",
      :onraisedplatformpadpicture => false,
      :cablingfromcabinetacrossicebridgepicture => false,
      :patchcablingpicture => false,
      :labelsonequippicture => false,
      :dressedcablespicture => false
    ))
  end

  it "renders the edit cabinet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cabinets_path(@cabinet), :method => "post" do
      assert_select "input#cabinet_site_id", :name => "cabinet[site_id]"
      assert_select "input#cabinet_onraisedplatformpadpicture", :name => "cabinet[onraisedplatformpadpicture]"
      assert_select "input#cabinet_cablingfromcabinetacrossicebridgepicture", :name => "cabinet[cablingfromcabinetacrossicebridgepicture]"
      assert_select "input#cabinet_patchcablingpicture", :name => "cabinet[patchcablingpicture]"
      assert_select "input#cabinet_labelsonequippicture", :name => "cabinet[labelsonequippicture]"
      assert_select "input#cabinet_dressedcablespicture", :name => "cabinet[dressedcablespicture]"
    end
  end
end
