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

  def index
  	@usuarios = Usuario.all.order(:nombre)
  end

  def change_pwd
  	# id = params.require(:usuario).permit(:id)
  	# @usuario = Usuario.find(id)
  	@usuario = Usuario.find(params[:id])
  end

  def update_pwd
  	u = params.require(:usuario).permit(:current_password, :password, :password_confirmation)
  	logger.debug u
  	@usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update(u)
        format.html { redirect_to change_pwd_usuario_path, notice: 'La contraseña se actualizó correctamente.' }
      else
        format.html { render :change_pwd }
      end
    end
  end

private
	def usuario_params
		params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation)
	end
end
