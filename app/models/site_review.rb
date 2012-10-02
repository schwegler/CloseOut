# == Schema Information
#
# Table name: site_reviews
#
#  id              :integer          not null, primary key
#  site_id         :integer
#  installstart    :date
#  installcomplete :date
#  turnup          :date
#  elecinsp        :date
#  reviewedby      :string(255)
#  datereviewed    :date
#  acctepted       :boolean
#  dateaccepted    :date
#  reasonrejected  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SiteReview < ActiveRecord::Base
  attr_accessible :acctepted, :dateaccepted, :datereviewed, :elecinsp, :installcomplete, :installstart, :reasonrejected, :reviewedby, :site_id, :turnup
  belongs_to :site
end
