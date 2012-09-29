class AddSiteIdToScopeOfWork < ActiveRecord::Migration
  def change
    add_column :scope_of_works, :site_id, :integer
  end
end
