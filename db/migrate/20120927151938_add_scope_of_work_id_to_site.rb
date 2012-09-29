class AddScopeOfWorkIdToSite < ActiveRecord::Migration
  def change
    add_column :sites, :scope_of_work_id, :integer
  end
end
