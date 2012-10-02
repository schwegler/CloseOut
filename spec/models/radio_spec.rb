# == Schema Information
#
# Table name: radios
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :text
#  tower_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Radio do
  pending "add some examples to (or delete) #{__FILE__}"
end
