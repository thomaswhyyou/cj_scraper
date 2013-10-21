class HomeController < ApplicationController
  def index
  end

  def active
    @active_merchants = Merchant.where(status: 'active')
  end

  def allowed
    @allowed_merchants = Merchant.where(status: 'active', bidding_policy: 'allowed')
  end

  def pending_application
    @pending_app_merchants = Merchant.all
  end

end
