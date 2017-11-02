class SesionesController < ApplicationController
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
	    redirect_to action: session[:intended_action],
									controller: session[:intended_controller],
									params: (session[:intented_params]||{})
	  else
	    flash.now.notice = "El usuario o la contraseña son incorrectos"
	    render "new"
	  end
  end

  def destroy
  	session[:usuario_id] = nil
  	redirect_to root_url #, :notice => "Logged out!"
  end
end
