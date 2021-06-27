class SensorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    sensor_data_sanatized.each do |sensor_data|
      response = SensorsDataService.new(sensor_data)
      response.get_sensors_data
    end
    #response = SensorsDataService.new(sanatized_params)
    render json: {data: "batalla recibida"}
  end

  private

  def sensor_data_sanatized
    params.required(:data)
  end

end
