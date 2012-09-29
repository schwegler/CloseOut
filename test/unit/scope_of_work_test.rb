# == Schema Information
#
# Table name: scope_of_works
#
#  id         :integer          not null, primary key
#  worktype   :string(255)
#  item       :text
#  completed  :string(255)
#  contractor :string(255)
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tech_id    :integer
#  site_id    :integer
#

require 'test_helper'

class ScopeOfWorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
