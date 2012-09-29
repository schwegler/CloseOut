class CreateScopeOfWorks < ActiveRecord::Migration
  def change
    create_table :scope_of_works do |t|
      t.string :worktype
      t.text :item
      t.string :completed
      t.string :contractor
      t.text :notes

      t.timestamps
    end
  end
end
