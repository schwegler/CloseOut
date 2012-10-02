# == Schema Information
#
# Table name: attachments
#
#  descriptino   :text
#  file          :string(255)
#  attachable_id :integer
#

class Attachment < ActiveRecord::Base
  belongs_to :attachable
  attr_accessible :description, :file
end
