# == Schema Information
#
# Table name: port_mapfor3750_mes
#
#  id              :integer          not null, primary key
#  cabinet_id      :integer
#  site_id         :integer
#  port            :string(255)
#  connecteddevice :string(255)
#  swport          :string(255)
#  patchpanelport  :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class PortMapfor3750Me < ActiveRecord::Base
  attr_accessible :cabinet_id, :connecteddevice, :patchpanelport, :port, :site_id, :swport
  belongs_to :cabinet
  belongs_to :site
end
