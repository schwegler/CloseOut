# == Schema Information
#
# Table name: sites
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  number           :integer
#  location         :string(255)
#  type             :string(255)
#  county           :string(255)
#  notes            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  tech_id          :integer
#  scope_of_work_id :integer
#  siteimg          :string(255)
#

require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
