class Api::V1::RainStationController < ApplicationController
  before_action :set_stations, only: %i[index]
  before_action :post_params, only: %i[create]
  def index
    render json: {
      rainstations: @rainstations.as_json
    }
  end

  def create
    @rainstation = Rainstation.new(post_params)
    if @rainstation.save
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  def show
    render json: Rainstation.where(id: params[:id]).as_json
  end

  private

  def set_stations
    @rainstations = Rainstation.all
  end

  def post_params
    params.require(:rainstation).permit(:code, :lat, :lng)
  end
end
