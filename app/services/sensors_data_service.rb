class SensorsDataService

  attr_accessor :sensor_data

  def initialize(sensor_data)
    self.sensor_data = sensor_data
  end

  def split_data
    sensor_data.split(",")
  end

  def get_data
    split_data[1..-1]
  end

  def get_sensors_data
    get_data.map.with_index do |sensor, index|
      values = sensor.gsub(/[()]/, "").split("|")

      {
        position: index,
        ship: values[0],
        value: values[1].to_i,
        timetrack: get_timetrack
      }

    end
  end

  def get_timetrack
    split_data[0]
  end

end
