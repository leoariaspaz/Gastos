class MovimientosController < ApplicationController
  before_action :set_movimiento, only: [:show, :edit, :update, :destroy]
  before_action :set_tipos_transacciones, only: [:new, :create, :edit, :update]

  # GET /movimientos
  # GET /movimientos.json
  def index
    @fecha_hasta = Date.today
    @fecha_desde = @fecha_hasta - 30
  end

  def list
    cuenta_id = params[:id].to_i
    fecha_desde = helpers.str_to_date(params[:fecha_desde])
    fecha_hasta = helpers.str_to_date(params[:fecha_hasta])
    @movimientos = Movimiento
                     .movimientos_entre_fechas(fecha_desde, fecha_hasta, cuenta_id)
                     .order(fecha_mov: :desc, created_at: :desc, cuenta_id: :asc)
                     .page(params[:page])
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
    respond_to do |format|
      if @movimiento.update(es_contrasiento: true, usuario: current_user)
        format.html { redirect_to movimientos_url, notice: 'El movimiento se contrasentó correctamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to movimientos_path, error: @movimiento.errors.full_messages.join(" ") }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
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

  # GET '/movimientos/consultas/entre-fechas'
  def entre_fechas
    @movimiento = MovEntreFechasSearch.new
    render 'movimientos/reportes/cons_entre_fechas/index'
  end

  # POST '/movimientos/consultas/entre_fechas'
  def cons_entre_fechas
    p = params.require(:mov_entre_fechas_search).permit(:fecha_desde, :fecha_hasta, :cuenta_id, :tipo_informe)
    m = MovEntreFechasSearch.new(p)
    if m.valid?
      pdf = MovEntreFechasPdf.new(m, view_context)
      if not pdf.nil?
        send_data pdf.render, filename: pdf.file_name,
                              type: "application/pdf",
                              disposition: "inline"
      end
    else
      render action: 'entre_fechas'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = Movimiento.find(params[:id])
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
