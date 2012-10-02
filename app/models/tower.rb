# == Schema Information
#
# Table name: towers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  numbeant   :integer
#  numbnewant :integer
#  oldcables  :text
#  newcables  :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tower < ActiveRecord::Base
  attr_accessible :name, :newcables, :numbeant, :numbnewant, :oldcables, :site_id
  
  has_many :radios, :inverse_of => :tower
  belongs_to :radio, :inverse_of => :towers

  belongs_to :site, :inverse_of => :towers
  has_many :sites, :inverse_of => :tower

  has_many :antennas, :through => :radios
end
