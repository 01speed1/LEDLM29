class SensorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    sensor_data_sanatized.each do |sensor_data|
      parsed_data = SensorsDataService.new(sensor_data)
      analyzed_sensor = SensorsAnalyzerService.new(parsed_data.get_sensors_data)
    end
    render json: {data: "batalla recibida"}
  end

  private

  def sensor_data_sanatized
    params.required(:data)
  end

end
