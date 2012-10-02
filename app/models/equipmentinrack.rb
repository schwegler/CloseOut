# == Schema Information
#
# Table name: equipmentinracks
#
#  id           :integer          not null, primary key
#  cabinet_id   :integer
#  site_id      :integer
#  item         :string(255)
#  serialnumber :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Equipmentinrack < ActiveRecord::Base
  attr_accessible :cabinet_id, :item, :serialnumber, :site_id
  belongs_to :site
  belongs_to :cabinet
end
