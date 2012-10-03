class AddTowerIdToAntennas < ActiveRecord::Migration
  def change
    add_column :antennas, :tower_id, :integer
  end
end
