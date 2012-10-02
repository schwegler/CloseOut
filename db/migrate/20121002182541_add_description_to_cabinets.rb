class AddDescriptionToCabinets < ActiveRecord::Migration
  def change
    add_column :cabinets, :description, :string
  end
end
