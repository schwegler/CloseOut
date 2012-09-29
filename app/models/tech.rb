# == Schema Information
#
# Table name: teches
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  phone            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  site_id          :integer
#  scope_of_work_id :integer
#

class Tech < ActiveRecord::Base
  attr_accessible :name, :phone, :site_id
  has_many :sites, :inverse_of => :tech
  belongs_to :site, :inverse_of => :tech
  has_many :scope_of_works, :inverse_of => :tech
  belongs_to :scope_of_work, :inverse_of => :tech
  has_many :notes, :inverse_of => :tech
  belongs_to :note, :inverse_of => :tech
end
