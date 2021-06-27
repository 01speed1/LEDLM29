module AlertsItsATrapService

  def self.call
    alert_sensor = SensorCounter.joins(sensor: :sensor_tracks)
                    .where("count > 29")
                    .pluck('"sensors"."position"',
                           '"sensor_tracks"."ship"',
                           '"sensor_tracks"."value"',
                           '"sensor_tracks"."time_tracking"',
                           '"sensor_counters"."count"')

    alert_sensor.map do |object|
      { position: object[0],
        ship: object[1],
        value: object[2],
        time_tracking: object[3].iso8601,
        count_tracker: object[4]
      }
    end
  end
end
