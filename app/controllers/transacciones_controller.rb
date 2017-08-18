class TransaccionesController < ApplicationController
  before_action :set_transaccion, only: [:show, :edit, :update, :destroy]
  before_action :set_tipos_transacciones, only: [:new, :create, :edit, :update]

  # GET /transacciones
  # GET /transacciones.json
  def index
    @transacciones = Transaccion.all
  end

  # GET /transacciones/1
  # GET /transacciones/1.json
  def show
  end

  # GET /transacciones/new
  def new
    @transaccion = Transaccion.new
  end

  # GET /transacciones/1/edit
  def edit
  end

  # POST /transacciones
  # POST /transacciones.json
  def create
    @transaccion = Transaccion.new(transaccion_params)
    respond_to do |format|
      if @transaccion.save
        format.html { redirect_to transacciones_url, notice: 'La transacción se grabó correctamente.' }
        format.json { render :show, status: :created, location: @transaccion }
      else
        format.html { render :new }
        format.json { render json: @transaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacciones/1
  # PATCH/PUT /transacciones/1.json
  def update
    respond_to do |format|
      if @transaccion.update(transaccion_params)
        format.html { redirect_to transacciones_url, notice: 'La transacción se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @transaccion }
      else
        format.html { render :edit }
        format.json { render json: @transaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacciones/1
  # DELETE /transacciones/1.json
  def destroy
    @transaccion.destroy
    respond_to do |format|
      format.html { redirect_to transacciones_url, notice: 'La transacción se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaccion
      @transaccion = Transaccion.find(params[:id])
    end

    def set_tipos_transacciones
      @tipos_transacciones = TipoTransaccion.where(habilitado: true).map { |t| [t.descripcion, t.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaccion_params
      params.require(:transaccion).permit(:descripcion, :habilitado, :es_debito, :tipo_transaccion_id)
    end
end
