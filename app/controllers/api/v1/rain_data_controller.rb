class Api::V1::RainDataController < ApplicationController
  before_action :set_data, only: %i[index]
  before_action :post_params, only: %i[create]

  def create
    puts post_params
    @raindata = Raindata.new(post_params)
    @raindata.rain = Time.new
    if @raindata.save
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  def index
    render json: {
      raindata: @raindata.as_json
    }
  end

  private

  def set_data
    @raindata = Raindata.where(rainstation_id: params[:rainstation_id])
  end

  def post_params
    params.require(:raindata).permit(:rainstation_id)
  end
end
