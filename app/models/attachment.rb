# == Schema Information
#
# Table name: attachments
#
#  id            :integer          not null, primary key
#  description   :text
#  file          :string(255)
#  attachable_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Attachment < ActiveRecord::Base
  belongs_to :attachable
  attr_accessible :description, :file
end
