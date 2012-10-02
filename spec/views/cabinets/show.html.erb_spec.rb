require 'spec_helper'

describe "cabinets/show" do
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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
