class AddTechIdToBom < ActiveRecord::Migration
  def change
    add_column :boms, :tech_id, :integer
  end
end
