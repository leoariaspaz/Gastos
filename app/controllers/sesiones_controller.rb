class SesionesController < ApplicationController
  def new
  end

  def create
		user = Usuario.authenticate(params[:email], params[:password])
	  if user
	    session[:usuario_id] = user.id
	    redirect_to movimientos_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
  end

  def destroy  	
  	session[:usuario_id] = nil
  	redirect_to root_url, :notice => "Logged out!"
  end
end
