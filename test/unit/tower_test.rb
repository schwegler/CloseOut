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

require 'test_helper'

class TowerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
