class CuentasController < ApplicationController
  before_action :set_cuenta, only: [:show, :edit, :update, :destroy]

  # GET /cuentas
  # GET /cuentas.json
  def index
    @cuentas = current_user.cuentas.all
  end

  # GET /cuentas/1
  # GET /cuentas/1.json
  def show
  end

  # GET /cuentas/new
  def new
    @cuenta = Cuenta.new
  end

  # GET /cuentas/1/edit
  def edit
  end

  # POST /cuentas
  # POST /cuentas.json
  def create
    @cuenta = Cuenta.new(cuenta_params)
    @cuenta.empresa = current_user.empresa

    respond_to do |format|
      if @cuenta.save
        format.html { redirect_to cuentas_path, notice: 'La cuenta se creó correctamente.' }
        format.json { render :show, status: :created, location: @cuenta }
      else
        format.html { render :new }
        format.json { render json: @cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuentas/1
  # PATCH/PUT /cuentas/1.json
  def update
    respond_to do |format|
      if @cuenta.update(cuenta_params)
        format.html { redirect_to cuentas_path, notice: 'La cuenta se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @cuenta }
      else
        format.html { render :edit }
        format.json { render json: @cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuentas/1
  # DELETE /cuentas/1.json
  def destroy
    respond_to do |format|
      if @cuenta.destroy
        format.html { redirect_to cuentas_url, notice: 'La cuenta se eliminó correctamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to cuentas_path, error: @cuenta.errors.full_messages.join(" ") }
        format.json { render json: @cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  def saldos
    @cuentas = Cuenta.obtener_saldos(current_user)
    @total = @cuentas.sum(&:saldo_inicial) + @cuentas.sum(&:importe)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta
      @cuenta = current_user.cuentas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuenta_params
      params.require(:cuenta).permit(:descripcion, :saldo_inicial, :habilitado)
    end
end
