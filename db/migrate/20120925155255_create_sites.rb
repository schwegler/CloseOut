class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :number
      t.string :location
      t.string :type
      t.string :county
      t.text :notes

      t.timestamps
    end
  end
end
