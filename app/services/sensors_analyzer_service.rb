class SensorsAnalyzerService

  attr_accessor :parsed_data, :sensor, :sensor_track

  def initialize(parsed_data)
    self.parsed_data = parsed_data
    save_sensor_tracking
    save_sensor_counter
  end

  def save_sensor
    sensor = Sensor.find_or_create(position: parsed_data[:position])
  end

  def save_sensor_tracking
    sensor_track_data = parsed_data.merge(sensor_id: save_sensor.id)
    sensor_track_data.delete(:position)
    sensor_track = SensorTrack.create!(sensor_track_data)
  end

  def save_sensor_counter
    prev_track = SensorTrack
      .find_by(sensor_id: sensor.id)
      .where("time_tracking < ? ", sensor_track.time_tracking)
      .order("DESC time_tracking")
      .first

    sensor_counter = SensorCounter.find_by(sensor_id: sensor.id)

    increse = should_increse?(prev_track, should_increse) ? sensor.counter++ : 0

    sensor_counter.update(count: increse)
  end

  private

  def should_increse?(prev_track, sensor_track)
   prev_track.value > 99 && sensor_track.value > 99
  end

end
