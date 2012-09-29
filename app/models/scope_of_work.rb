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

class ScopeOfWork < ActiveRecord::Base
  attr_accessible :completed, :contractor, :item, :notes, :worktype, :site_id, :tech_id
  belongs_to :tech, :inverse_of => :scope_of_works
  has_many :teches, :inverse_of => :scope_of_work
  belongs_to :site, :inverse_of => :scope_of_works
end
