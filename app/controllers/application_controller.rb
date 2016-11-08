class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

private 
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		@email ||= User.find(session[:user_id]).email if session[:user_id]
	end

	helper_method :current_user

	def authorize
		redirect_to home_path, alert: "Not authorized" if current_user.nil?
	end
  	
  	def set_locale
  		I18n.locale = params[:locale] || I18n.default_locale
  	end

  	def default_url_options(options = {})
	  { locale: I18n.locale }.merge options
	end
end
