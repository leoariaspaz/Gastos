class SesionesController < ApplicationController
	skip_before_action :authorize, only: [:new, :create]
	layout false

  def new
  	if current_user
  		redirect_to action: :index, controller: :movimientos
  	end
  end

  def create
		user = Usuario.authenticate(params[:email], params[:password])
	  if user
	    session[:usuario_id] = user.id
	    if session[:intented_params]
		    redirect_to action: session[:intended_action],
										controller: session[:intended_controller],
										params: (session[:intented_params]||{})
	   	elsif session[:intended_action]
		    redirect_to action: session[:intended_action],
										controller: session[:intended_controller]
			else
				redirect_to root_url
	    end
	  else
	    flash[:error] = "El usuario o la contraseña son incorrectos"
	    redirect_to root_url
	  end
  end

  def destroy
  	session[:usuario_id] = nil
  	session[:intended_action] = nil
  	session[:intended_controller] = nil
  	session[:intented_params] = nil
  	redirect_to root_url #, :notice => "Logged out!"
  end
end
