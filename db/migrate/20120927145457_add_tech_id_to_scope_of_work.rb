class AddTechIdToScopeOfWork < ActiveRecord::Migration
  def change
    add_column :scope_of_works, :tech_id, :integer
  end
end
