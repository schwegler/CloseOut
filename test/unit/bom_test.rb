# == Schema Information
#
# Table name: boms
#
#  id         :integer          not null, primary key
#  worktype   :string(255)
#  item       :text
#  estq       :string(255)
#  usedq      :string(255)
#  vendor     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  site_id    :integer
#  tech_id    :integer
#

require 'test_helper'

class BomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
