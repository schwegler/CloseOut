# == Schema Information
#
# Table name: sites
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  number           :integer
#  location         :string(255)
#  type             :string(255)
#  county           :string(255)
#  notes            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  tech_id          :integer
#  scope_of_work_id :integer
#  siteimg          :string(255)
#

class Site < ActiveRecord::Base
  attr_accessible :county, :location, :name, :number, :type, :tech_id, :title, :description, :clips_attributes
  has_many :clips, :as => :attachable
  accepts_nested_attributes_for :clips, :allow_destroy => true
  belongs_to :tech, :inverse_of => :sites
  has_many :teches, :inverse_of => :site
  has_many :scope_of_works, :inverse_of => :site
  has_many :boms, :inverse_of => :site
  has_many :notes, :inverse_of => :site
  belongs_to :tower, :inverse_of => :sites
  has_many :towers, :inverse_of => :site
  has_many :antennas
  has_many :radios, :through => :towers


  self.inheritance_column = :ruby_type

 # getter for the "type" column
 def site_type
  self[:type]
 end

 # setter for the "type" column
 def site_type=(s)
  self[:type] = s
 end
end

