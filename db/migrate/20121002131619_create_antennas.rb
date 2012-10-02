class CreateAntennas < ActiveRecord::Migration
  def change
    create_table :antennas do |t|
      t.integer :radio_id
      t.string :desc
      t.string :antenna
      t.string :azimuth
      t.string :elevation
      t.string :frequencytx
      t.string :frequencyrx
      t.string :height
      t.string :txpower
      t.string :serialnumber
      t.string :phasingcolor1
      t.string :phasingcolor2
      t.string :sectorsize
      t.string :antennatype
      t.string :dishsize

      t.timestamps
    end
  end
end
