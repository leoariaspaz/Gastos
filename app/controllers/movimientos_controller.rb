class MovimientosController < ApplicationController
  before_action :set_movimiento, only: [:show, :edit, :update, :destroy]
  before_action :set_tipos_transacciones, only: [:new, :create, :edit, :update]

  # GET /movimientos
  # GET /movimientos.json
  def index
  end

  def list
    id = params[:id].to_i
    if id == 0
      @movimientos = current_user.movimientos.all
    else
      @movimientos = current_user.movimientos.where(cuenta_id: id)
    end
    @movimientos = @movimientos.order(fecha_mov: :desc, created_at: :desc, cuenta_id: :asc).page params[:page]
    anteriores = current_user.movimientos
                  .where(cuenta_id: id)
                  .joins(:transaccion)
                  .where("movimientos.created_at < ?", @movimientos.last.created_at)
    debitos = anteriores.where("transacciones.es_debito = ?", true).sum(:importe)
    creditos = anteriores.where("transacciones.es_debito = ?", false).sum(:importe)
    saldo_inicial = current_user.cuentas.find(id).saldo_inicial
    saldo_anterior = saldo_inicial + creditos - debitos
    @movimientos.reverse_each do |m|
      m.saldo = saldo_anterior + m.importe_real
      saldo_anterior = m.saldo
    end
  end

  # GET /movimientos/1
  # GET /movimientos/1.json
  def show
  end

  # GET /movimientos/new
  def new
    @movimiento = Movimiento.new(fecha_mov: Date.today)
    @transacciones = []
  end

  # GET /movimientos/1/edit
  def edit
    if @movimiento.tipo_transaccion_id > 0
      @transacciones = current_user.transacciones
                          .where(tipo_transaccion_id: @movimiento.tipo_transaccion_id)
                          .order(:descripcion)
                          .map { |t| [t.descripcion, t.id] }
    else
      @transacciones = []
    end
  end

  # POST /movimientos
  # POST /movimientos.json
  def create
    @movimiento = Movimiento.new(movimiento_params)
    @movimiento.empresa_id = current_user.empresa_id
    @movimiento.usuario = current_user
    flash[:cuenta_id] = @movimiento.cuenta_id

    respond_to do |format|
      if @movimiento.save
        format.html { redirect_to movimientos_url, notice: 'El movimiento se creó correctamente.' }
        format.json { render :show, status: :created, location: @movimiento }
      else
        @transacciones = current_user.transacciones.all_for_select(@movimiento.tipo_transaccion_id)
        format.html { render :new }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimientos/1
  # PATCH/PUT /movimientos/1.json
  def update
    respond_to do |format|
      if @movimiento.update(movimiento_params)
        flash[:cuenta_id] = @movimiento.cuenta_id
        format.html { redirect_to movimientos_url, notice: 'El movimiento se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @movimiento }
      else
        @transacciones = current_user.transacciones.all_for_select(@movimiento.tipo_transaccion_id)
        format.html { render :edit }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimientos/1
  # DELETE /movimientos/1.json
  def destroy
    @movimiento.destroy
    respond_to do |format|
      format.html { redirect_to movimientos_url, notice: 'El movimiento se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  def carga_masiva
    @movimiento = Movimiento.new(fecha_mov: Date.today)
    render 'movimientos/carga_masiva/new'
  end

  def grabar_carga_masiva
    @movimiento = Movimiento.new(movimiento_masivo_params)
    logger.debug "current_user.empresa_id = #{current_user.empresa_id}"
    @movimiento.empresa_id = current_user.empresa_id
    @movimiento.usuario = current_user
    flash[:cuenta_id] = @movimiento.cuenta_id
    logger.debug "agrupar = #{@movimiento.agrupar.to_s}"
    respond_to do |format|
      if @movimiento.save_items(current_user.empresa_id)
        format.html { redirect_to movimientos_url, notice: 'Los movimientos se crearon correctamente.' }
      else
        @transacciones = current_user.transacciones.all_for_select(@movimiento.tipo_transaccion_id)
        format.html { render 'movimientos/carga_masiva/new' }
      end
    end
  end

  def nuevo_movimiento_masivo
    @movimiento = Movimiento.new(fecha_mov: Date.today)
  end

  def sumar
    p = params.permit({items: [:trx, :importe]})
    tmp = []
    p['items'].each { |k,v| tmp << v }
    @cantidad = p['items'].to_h.count
    @total = tmp.inject(0){|sum,x| sum + x["importe"].to_f }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = current_user.movimientos.find(params[:id])
      @movimiento.usuario = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_params
      params.require(:movimiento).permit(:fecha_mov, :transaccion_id, :importe, :cuenta_id)
    end

    def set_tipos_transacciones
      @tipos_transacciones = current_user.tipos_transacciones.where(habilitado: true).map { |t| [t.descripcion, t.id] }
    end

    def movimiento_masivo_params
      params.require(:movimiento).permit(:fecha_mov, :cuenta_id, :agrupar, {items: [:transaccion_id, :importe]})
    end
end
