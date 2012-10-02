class CreateRadios < ActiveRecord::Migration
  def change
    create_table :radios do |t|
      t.string :name
      t.text :desc
      t.integer :tower_id

      t.timestamps
    end
  end
end
