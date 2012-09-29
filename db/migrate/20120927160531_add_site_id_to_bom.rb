class AddSiteIdToBom < ActiveRecord::Migration
  def change
    add_column :boms, :site_id, :integer
  end
end
