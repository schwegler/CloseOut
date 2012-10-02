class CreatePortMapfor3750Mes < ActiveRecord::Migration
  def change
    create_table :port_mapfor3750_mes do |t|
      t.integer :cabinet_id
      t.integer :site_id
      t.string :port
      t.string :connecteddevice
      t.string :swport
      t.string :patchpanelport

      t.timestamps
    end
  end
end
