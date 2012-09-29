class AddTechIdToSite < ActiveRecord::Migration
  def change
    add_column :sites, :tech_id, :integer
  end
end
