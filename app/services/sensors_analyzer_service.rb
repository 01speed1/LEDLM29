class SensorsAnalyzerService

  attr_accessor :parsed_data, :sensor, :sensor_track

  def initialize(parsed_data)
    self.parsed_data = parsed_data
    save_sensor_tracking
    save_sensor_counter
  end

  def save_sensor
    self.sensor = Sensor.find_or_create_by(position: parsed_data[:position])
  end

  def save_sensor_tracking
    sensor_track_data = parsed_data.merge(sensor_id: save_sensor.id)
    sensor_track_data.delete(:position)
    self.sensor_track = SensorTrack.create!(sensor_track_data)
  end

  def save_sensor_counter
    prev_track = SensorTrack
      .where("sensor_id = ? AND time_tracking < ? ", sensor.id, sensor_track.time_tracking)
      .order(:time_tracking, :desc)
      .first

    sensor_counter = SensorCounter.find_or_create_by(sensor_id: sensor.id)

    increse = should_increse?(prev_track, sensor_track) ? sensor_counter.count+1 : 0

    sensor_counter.update(count: increse)
  end

  private

  def should_increse?(prev_track, sensor_track)
    #puts { prev_track: prev_track, sensor_track: sensor_track }
    prev_track && prev_track.value > 99 && sensor_track.value > 99
  end

end
