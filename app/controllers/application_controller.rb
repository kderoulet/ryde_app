class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private
  helper_method :current_user
  helper_method :price
  helper_method :time

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def price
    number_to_currency((((Destination.find_by(name: @ryde.starting_location).au - Destination.find_by(name: @ryde.ending_location).au).abs * 10998213) + 6000000).to_d)
  end

  def time
    ((Destination.find_by(name: @ryde.starting_location).au - Destination.find_by(name: @ryde.ending_location).au).abs * 160).to_i 
  end

  def authorize
    redirect_to root_path if current_user.nil?
  end

  def authorize_pilot
    redirect_to rydes_path unless current_user.pilot? if current_user
  end

  def authorize_ryder
    redirect_to rydes_path if current_user.pilot? if current_user
  end

  def no_more_rydes
    redirect_to rydes_path unless current_user.rydes.order('created_at DESC').first.finished if current_user.rydes.length > 0
  end

end
