class CreateSensorTrack < ActiveRecord::Migration[6.1]
  def change
    create_table :sensor_tracks do |t|
      t.integer :value
      t.string :ship
      t.datetime :time_traking
      t.references :sensor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
