class SensorsDataService

  attr_accessor :sensor_data

  def initialize(sensor_data)
    self.sensor_data = sensor_data
    #"2021-06-25 21:21:34,(Bomber|300),(Bomber|300),(Bomber|300),(-|34),(-|86),(-|80),(-|28),(-|26),(-|44),(-|91)"
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
        value: values[1],
        timetrack: get_timetrack
      }

    end
  end

  def get_timetrack
    split_data[0]
  end

end
