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

require 'spec_helper'

describe Equipmentinrack do
  pending "add some examples to (or delete) #{__FILE__}"
end
