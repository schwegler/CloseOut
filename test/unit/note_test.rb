# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  subject    :string(255)
#  date       :datetime
#  note       :text
#  submitedon :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  created_on :datetime
#  site_id    :integer
#  tech_id    :integer
#

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
