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

      data = {
        position: index,
        ship: values[0],
        value: values[1].to_i,
        time_tracking: get_time_tracking
      }

      SensorsAnalyzerService.new(data)
    end
  end

  def get_time_tracking
    split_data[0]
  end

end
