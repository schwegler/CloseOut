class CreateBoms < ActiveRecord::Migration
  def change
    create_table :boms do |t|
      t.string :worktype
      t.text :item
      t.string :estq
      t.string :usedq
      t.string :vendor

      t.timestamps
    end
  end
end
