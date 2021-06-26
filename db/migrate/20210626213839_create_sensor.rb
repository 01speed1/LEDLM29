class CreateSensor < ActiveRecord::Migration[6.1]
  def change
    create_table :sensors do |t|
      t.integer :position

      t.timestamps
    end
  end
end
