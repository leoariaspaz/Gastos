class UsuariosController < ApplicationController
  def new
  	@user = Usuario.new
  end

	def create
	  # @user = Usuario.new(params[:user])
	  @user = Usuario.new(usuario_params)
	  if @user.save
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
  end

private
	def usuario_params
		params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation)
	end	
end
