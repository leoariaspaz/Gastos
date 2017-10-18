class SesionesController < ApplicationController
  def new
  end

  def create
		user = Usuario.authenticate(params[:email], params[:password])
	  if user
	    session[:usuario_id] = user.id
	    redirect_to action: session[:intended_action],
									controller: session[:intended_controller]
	  else
	    flash.now.notice = "Invalid email or password"
	    render "new"
	  end
  end

  def destroy  	
  	session[:usuario_id] = nil
  	redirect_to root_url, :notice => "Logged out!"
  end
end
