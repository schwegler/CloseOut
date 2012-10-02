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

require 'spec_helper'

describe PortMapfor3750Me do
  pending "add some examples to (or delete) #{__FILE__}"
end
