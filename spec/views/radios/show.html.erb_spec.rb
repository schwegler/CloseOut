require 'spec_helper'

describe "radios/show" do
  before(:each) do
    @radio = assign(:radio, stub_model(Radio,
      :name => "Name",
      :desc => "MyText",
      :tower_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
