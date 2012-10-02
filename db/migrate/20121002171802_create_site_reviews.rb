class CreateSiteReviews < ActiveRecord::Migration
  def change
    create_table :site_reviews do |t|
      t.integer :site_id
      t.date :installstart
      t.date :installcomplete
      t.date :turnup
      t.date :elecinsp
      t.string :reviewedby
      t.date :datereviewed
      t.boolean :acctepted
      t.date :dateaccepted
      t.text :reasonrejected

      t.timestamps
    end
  end
end
