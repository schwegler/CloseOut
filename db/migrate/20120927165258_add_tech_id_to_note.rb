class AddTechIdToNote < ActiveRecord::Migration
  def change
    add_column :notes, :tech_id, :integer
  end
end
