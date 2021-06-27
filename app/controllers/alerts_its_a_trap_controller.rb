class AlertsItsATrapController < ApplicationController

  def index
    render json: { sensors: AlertsItsATrapService.() }
  end

end
