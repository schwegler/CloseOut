# == Schema Information
#
# Table name: radios
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :text
#  tower_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Radio < ActiveRecord::Base
  attr_accessible :desc, :name, :tower_id
  
  belongs_to :tower, :inverse_of => :radios
  belongs_to :site, :inverse_of => :radios
  
  has_many :sites, :inverse_of => :radio
  has_many :antennas, :inverse_of => :radio
  has_many :towers, :inverse_of => :radio
end
