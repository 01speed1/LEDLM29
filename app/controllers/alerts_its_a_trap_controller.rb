class AlertsItsATrapController < ApplicationController

  def index
    render json: { position: 0,
                  ship: "Bomber",
                  value: 100,
                  time_tracking: "2021-06-25 21:21:34" }
  end

end
