class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    foursquare = FoursquareService.new
    session[:token] = foursquare.authenticate!('LVJEVJ4BCTANBM5CY1FYBULOYBLIQXYHM4NM22HOTLVJCKAS'), '1GSGX0OQCLKOMYKISRAMFTGYPUSC00NGK1FJTB2WKSPO2QAY', params[:code])
    redirect_to root_path
  end

end
