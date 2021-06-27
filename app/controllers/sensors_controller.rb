class SensorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    parsed_data = SensorsDataService.new(sensor_data_sanatized)
    parsed_data.get_sensors_data
    render json: {data: "batalla recibida"}
  end

  private

  def sensor_data_sanatized
    params.required(:data)
  end

end
