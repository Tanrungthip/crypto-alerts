class PriceAlertsController < ApplicationController

  def index
    @price_alerts = PriceAlert.all
  end

  def show
    @price_alert = PriceAlert.find(params[:id])
  end

  def new
    @price_alert = PriceAlert.new
  end

  def create
    @price_alert = PriceAlert.new(price_alert_params)
    @price_alert.user = current_user
    if @price_alert.save
      redirect_to price_alerts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @price_alert = PriceAlert.find(params[:id])
    @price_alert.destroy
    redirect_to price_alerts_path
  end

  def price_alert_params
    params.require(:price_alert).permit(:cryptocurrency, :price, :fiatcurrency, :user_id)
  end
end
