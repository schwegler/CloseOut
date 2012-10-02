require 'spec_helper'

describe "antennas/show" do
  before(:each) do
    @antenna = assign(:antenna, stub_model(Antenna,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Desc/)
    rendered.should match(/Antenna/)
    rendered.should match(/Azimuth/)
    rendered.should match(/Elevation/)
    rendered.should match(/Frequencytx/)
    rendered.should match(/Frequencyrx/)
    rendered.should match(/Height/)
    rendered.should match(/Txpower/)
    rendered.should match(/Serialnumber/)
    rendered.should match(/Phasingcolor1/)
    rendered.should match(/Phasingcolor2/)
    rendered.should match(/Sectorsize/)
    rendered.should match(/Antennatype/)
    rendered.should match(/Dishsize/)
  end
end
