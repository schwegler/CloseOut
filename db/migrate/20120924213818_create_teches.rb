class CreateTeches < ActiveRecord::Migration
  def change
    create_table :teches do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
