require 'spec_helper'

describe "antennas/index" do
  before(:each) do
    assign(:antennas, [
      stub_model(Antenna,
        :radio_id => 1,
        :desc => "Desc",
        :antenna => "Antenna",
        :azimuth => "Azimuth",
        :elevation => "Elevation",
        :frequencytx => "Frequencytx",
        :frequencyrx => "Frequencyrx",
        :height => "Height",
        :txpower => "Txpower",
        :serialnumber => "Serialnumber",
        :phasingcolor1 => "Phasingcolor1",
        :phasingcolor2 => "Phasingcolor2",
        :sectorsize => "Sectorsize",
        :antennatype => "Antennatype",
        :dishsize => "Dishsize"
      ),
      stub_model(Antenna,
        :radio_id => 1,
        :desc => "Desc",
        :antenna => "Antenna",
        :azimuth => "Azimuth",
        :elevation => "Elevation",
        :frequencytx => "Frequencytx",
        :frequencyrx => "Frequencyrx",
        :height => "Height",
        :txpower => "Txpower",
        :serialnumber => "Serialnumber",
        :phasingcolor1 => "Phasingcolor1",
        :phasingcolor2 => "Phasingcolor2",
        :sectorsize => "Sectorsize",
        :antennatype => "Antennatype",
        :dishsize => "Dishsize"
      )
    ])
  end

  it "renders a list of antennas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Antenna".to_s, :count => 2
    assert_select "tr>td", :text => "Azimuth".to_s, :count => 2
    assert_select "tr>td", :text => "Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "Frequencytx".to_s, :count => 2
    assert_select "tr>td", :text => "Frequencyrx".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Txpower".to_s, :count => 2
    assert_select "tr>td", :text => "Serialnumber".to_s, :count => 2
    assert_select "tr>td", :text => "Phasingcolor1".to_s, :count => 2
    assert_select "tr>td", :text => "Phasingcolor2".to_s, :count => 2
    assert_select "tr>td", :text => "Sectorsize".to_s, :count => 2
    assert_select "tr>td", :text => "Antennatype".to_s, :count => 2
    assert_select "tr>td", :text => "Dishsize".to_s, :count => 2
  end
end
