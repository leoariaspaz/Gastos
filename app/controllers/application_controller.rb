class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

private
	def current_user
		@current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
	end
end
