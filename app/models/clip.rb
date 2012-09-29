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

class Clip < ActiveRecord::Base
   attr_accessible :description, :file
   belongs_to :attachable, :polymorphic => true
   mount_uploader :file, FileUploader
end
