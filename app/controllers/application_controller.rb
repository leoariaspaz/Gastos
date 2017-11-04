class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :authorize
	add_flash_types :error
  helper_method :current_user

private
	def current_user
		@current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
	end

	def authorize
		if current_user.nil?
			session[:intended_action] = action_name
			session[:intended_controller] = controller_name
			session[:intended_params] = params
			redirect_to login_url, error: "No está autorizado a ver esta página."
		end
	end
end
