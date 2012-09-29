class AddScopeOfWorkIdToTech < ActiveRecord::Migration
  def change
    add_column :teches, :scope_of_work_id, :integer
  end
end
