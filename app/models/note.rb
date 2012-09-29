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

class Note < ActiveRecord::Base
  attr_accessible :date, :note, :subject, :site_id, :tech_id
  belongs_to :tech, :inverse_of => :notes
  has_many :teches, :inverse_of => :note
  belongs_to :site, :inverse_of => :notes
end
