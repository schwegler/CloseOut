class AddNameToCabinets < ActiveRecord::Migration
  def change
    add_column :cabinets, :name, :string
  end
end
