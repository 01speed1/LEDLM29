
class SensorsDataService

  attr_accessor :sensor_query

  def initialize(sensor_query)
    self.sensor_query = '{"data":"2021-06-01 08:00:01,(Bomber|122),(-|99),(-|0)"}'
    #sensor_query
  end

  def split_query
    query = JSON.parse(sensor_query).deep_symbolize_keys
    query[:data].split(",")
  end

  def get_data
    split_query[1..-1]
  end

  def get_sensors_data
    get_data.map.with_index do |sensor, index|
      values = sensor.gsub(/[()]/, "").split("|")

      {
        position: index,
        ship: values[0],
        value: values[1]
      }

    end
  end

  def get_timetrack
    split_query[0]
  end

end