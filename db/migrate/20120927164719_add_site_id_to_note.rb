class AddSiteIdToNote < ActiveRecord::Migration
  def change
    add_column :notes, :site_id, :integer
  end
end
