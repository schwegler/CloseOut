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

require 'test_helper'

class TechTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
