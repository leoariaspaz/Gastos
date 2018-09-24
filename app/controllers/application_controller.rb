class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :authorize
	add_flash_types :error
  helper_method :current_user

private
	def current_user
		begin
			@current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]			
		rescue Exception => e
			@current_user = nil
		end
		Usuario.current_user = @current_user
		return @current_user
	end

	def authorize
		if current_user.nil?
			session[:intended_action] = action_name
			session[:intended_controller] = controller_name
			session[:intended_params] = params
			redirect_to login_url, error: "No está autorizado a ver esta página."
		end
	end

	def autorizar_por_rol
		logger.debug "autorizar_por_rol => buscando #{self.class.controller_path} + #{action_name}"
		unless current_user.roles.detect {|rol|
			rol.permisos.detect{|permiso|
				#logger.debug "autorizar_por_rol => #{permiso.controller} + #{permiso.action} <-> #{self.class.controller_path} + #{action_name}"
				logger.debug "encontrado #{permiso.controller} + #{permiso.action}"
				permiso.action == action_name && permiso.controller == self.class.controller_path
			}
		}
			flash[:error] = "No está autorizado para ver esta página."
			redirect_back fallback_location: root_url
			# request.env["HTTP_REFERER"]? (redirect_to :back) : (redirect_to root_url)
			return false
		end
	end
end
