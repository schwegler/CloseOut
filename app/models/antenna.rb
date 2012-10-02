# == Schema Information
#
# Table name: antennas
#
#  id            :integer          not null, primary key
#  radio_id      :integer
#  desc          :string(255)
#  antenna       :string(255)
#  azimuth       :string(255)
#  elevation     :string(255)
#  frequencytx   :string(255)
#  frequencyrx   :string(255)
#  height        :string(255)
#  txpower       :string(255)
#  serialnumber  :string(255)
#  phasingcolor1 :string(255)
#  phasingcolor2 :string(255)
#  sectorsize    :string(255)
#  antennatype   :string(255)
#  dishsize      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Antenna < ActiveRecord::Base
  attr_accessible :antenna, :antennatype, :azimuth, :desc, :dishsize, :elevation, :frequencyrx, :frequencytx, :height, :phasingcolor1, :phasingcolor2, :radio_id, :sectorsize, :serialnumber, :txpower
  belongs_to :radio, :inverse_of => :antennas
end
