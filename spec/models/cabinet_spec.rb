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
#  description                              :string(255)
#  name                                     :string(255)
#

require 'spec_helper'

describe Cabinet do
  pending "add some examples to (or delete) #{__FILE__}"
end
