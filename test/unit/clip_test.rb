# == Schema Information
#
# Table name: clips
#
#  id              :integer          not null, primary key
#  description     :text
#  file            :string(255)
#  attachable_id   :integer
#  attachable_type :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
