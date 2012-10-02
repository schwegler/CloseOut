# == Schema Information
#
# Table name: cabinets
#
#  id                                       :integer          not null, primary key
#  site_id                                  :integer
#  equipinstalledpicture                    :boolean
#  onraisedplatformpadpicture               :boolean
#  cablingfromcabinetacrossicebridgepicture :boolean
#  patchcablingpicture                      :boolean
#  labelsonequippicture                     :boolean
#  dressedcablespicture                     :boolean
#  created_at                               :datetime         not null
#  updated_at                               :datetime         not null
#

class Cabinet < ActiveRecord::Base
  attr_accessible :cablingfromcabinetacrossicebridgepicture, :name, :dressedcablespicture, :labelsonequippicture, :onraisedplatformpadpicture, :patchcablingpicture, :site_id, :equipinstalledpicture
  belongs_to :site
  has_many :equipmentinracks
  has_many :port_mapfor3750_mes
end
