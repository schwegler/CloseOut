class CreateEquipmentinracks < ActiveRecord::Migration
  def change
    create_table :equipmentinracks do |t|
      t.integer :cabinet_id
      t.integer :site_id
      t.string :item
      t.string :serialnumber

      t.timestamps
    end
  end
end
