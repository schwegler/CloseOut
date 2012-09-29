class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.integer :numbeant
      t.integer :numbnewant
      t.text :oldcables
      t.text :newcables
      t.integer :site_id

      t.timestamps
    end
  end
end
