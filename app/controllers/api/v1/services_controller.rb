class Api::V1::ServicesController < Api::V1::BaseController

  def index
    @services = Service.all
    render json: @services #Just for testing
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :description, :price)
  end

end
