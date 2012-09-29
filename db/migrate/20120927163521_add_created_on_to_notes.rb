class AddCreatedOnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :created_on, :timestamp
  end
end
