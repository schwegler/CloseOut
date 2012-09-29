class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :subject
      t.datetime :date
      t.text :note
      t.timestamp :submitedon

      t.timestamps
    end
  end
end
