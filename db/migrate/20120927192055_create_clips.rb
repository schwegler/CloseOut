class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.text :description
      t.string :file
      t.references :attachable,  :polymorphic => true

      t.timestamps
    end
    add_index :clips, :attachable_id
  end
end

