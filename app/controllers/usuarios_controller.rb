class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :reset_pwd]

  def index
    @usuarios = Usuario.all.where("id <> ?", current_user.id).order(:nombre)
  end

  def new
    @usuario = Usuario.new
  end

	def create
	  # @usuario = Usuario.new(params[:user])
	  @usuario = Usuario.new(usuario_params)
    @usuario.estado = 1
	  if @usuario.save
	    redirect_to usuarios_path, notice: "El usuario se creó correctamente."
	  else
	    render :new
	  end
  end

  def edit
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to usuarios_path, notice: 'El usuario se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_pwd
  	# id = params.require(:usuario).permit(:id)
  	# @usuario = Usuario.find(id)
  	@usuario = Usuario.find(params[:id])
  end

  def update_pwd
  	u = params.require(:usuario).permit(:current_password, :password, :password_confirmation)
  	@usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update(u)
        format.html { redirect_to change_pwd_usuario_path, notice: 'La contraseña se actualizó correctamente.' }
      else
        format.html { render :change_pwd }
      end
    end
  end

  def reset_pwd
    @usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update(password: "123456")
        format.html { redirect_to usuarios_path, notice: 'La contraseña se asignó a 123456.' }
      else
        format.html { render usuarios_path }
      end
    end
  end

private
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

	def usuario_params
		params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation, :estado)
	end
end
