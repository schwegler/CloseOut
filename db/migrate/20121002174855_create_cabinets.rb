class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.integer :site_id
      t.boolean :equipinstalledpicture
      t.boolean :onraisedplatformpadpicture
      t.boolean :cablingfromcabinetacrossicebridgepicture
      t.boolean :patchcablingpicture
      t.boolean :labelsonequippicture
      t.boolean :dressedcablespicture

      t.timestamps
    end
  end
end
