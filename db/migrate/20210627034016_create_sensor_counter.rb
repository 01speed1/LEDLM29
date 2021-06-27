class CreateSensorCounter < ActiveRecord::Migration[6.1]
  def change
    create_table :sensor_counters do |t|
      t.integer :count, default: 0
      t.references :sensor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
