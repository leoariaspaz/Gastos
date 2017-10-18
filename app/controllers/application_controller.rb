class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_filter :authorize

private
  helper_method :current_user

	def current_user
		@current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
	end

	def authorize
		if current_user.nil? && (controller_name != "sesiones" && action_name != "new")
			session[:intended_action] = action_name
			session[:intended_controller] = controller_name
			redirect_to login_url, alert: "Not authorized"
		end
	end
end
