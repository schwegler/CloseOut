require 'spec_helper'

describe "antennas/new" do
  before(:each) do
    assign(:antenna, stub_model(Antenna,
      :radio_id => 1,
      :desc => "MyString",
      :antenna => "MyString",
      :azimuth => "MyString",
      :elevation => "MyString",
      :frequencytx => "MyString",
      :frequencyrx => "MyString",
      :height => "MyString",
      :txpower => "MyString",
      :serialnumber => "MyString",
      :phasingcolor1 => "MyString",
      :phasingcolor2 => "MyString",
      :sectorsize => "MyString",
      :antennatype => "MyString",
      :dishsize => "MyString"
    ).as_new_record)
  end

  it "renders new antenna form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => antennas_path, :method => "post" do
      assert_select "input#antenna_radio_id", :name => "antenna[radio_id]"
      assert_select "input#antenna_desc", :name => "antenna[desc]"
      assert_select "input#antenna_antenna", :name => "antenna[antenna]"
      assert_select "input#antenna_azimuth", :name => "antenna[azimuth]"
      assert_select "input#antenna_elevation", :name => "antenna[elevation]"
      assert_select "input#antenna_frequencytx", :name => "antenna[frequencytx]"
      assert_select "input#antenna_frequencyrx", :name => "antenna[frequencyrx]"
      assert_select "input#antenna_height", :name => "antenna[height]"
      assert_select "input#antenna_txpower", :name => "antenna[txpower]"
      assert_select "input#antenna_serialnumber", :name => "antenna[serialnumber]"
      assert_select "input#antenna_phasingcolor1", :name => "antenna[phasingcolor1]"
      assert_select "input#antenna_phasingcolor2", :name => "antenna[phasingcolor2]"
      assert_select "input#antenna_sectorsize", :name => "antenna[sectorsize]"
      assert_select "input#antenna_antennatype", :name => "antenna[antennatype]"
      assert_select "input#antenna_dishsize", :name => "antenna[dishsize]"
    end
  end
end
