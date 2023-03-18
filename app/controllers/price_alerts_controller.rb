class PriceAlertsController < ApplicationController
  def new
    @price_alert = PriceAlert.new
  end

  def price_alert_params
    params.require(:price_alert).permit(:cryptocurrency, :price, :fiatcurrency, :user_id)
  end
end
