# == Schema Information
#
# Table name: boms
#
#  id         :integer          not null, primary key
#  worktype   :string(255)
#  item       :text
#  estq       :string(255)
#  usedq      :string(255)
#  vendor     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  site_id    :integer
#  tech_id    :integer
#

class Bom < ActiveRecord::Base
  attr_accessible :estq, :item, :usedq, :vendor, :worktype, :site_id, :tech_id
  belongs_to :site, :inverse_of => :boms
  belongs_to :tech, :inverse_of => :boms
end
