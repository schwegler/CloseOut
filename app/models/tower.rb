# == Schema Information
#
# Table name: towers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  numbeant   :integer
#  numbnewant :integer
#  oldcables  :text
#  newcables  :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tower < ActiveRecord::Base
  attr_accessible :name, :newcables, :numbeant, :numbnewant, :oldcables, :site_id
  belongs_to :site, :inverse_of => :towers
end
