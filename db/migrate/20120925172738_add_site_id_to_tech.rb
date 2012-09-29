class AddSiteIdToTech < ActiveRecord::Migration
  def change
    add_column :teches, :site_id, :integer
  end
end
