class MovEntreFechasPdf < Prawn::Document
  include PdfReport
  include ApplicationHelper
  include ActionView::Helpers::NumberHelper 

  TABLE_HEADER = [["Fec. real", "Fec. Mov.", "Cód. Trx.", "Transacción", "Crédito", "Débito", "Saldo"]]

  def initialize(movimiento_search, view)
    super({page_size: "A4", left_margin: 20, right_margin: 20})
    agrupado = ""
    if MovEntreFechasSearch::TIPOS_INFORME.any? { |ti| ti[1] == movimiento_search.tipo_informe.to_i }
      agrupado = MovEntreFechasSearch::TIPOS_INFORME.select { |ti| ti[1] == movimiento_search.tipo_informe.to_i }.first[0].downcase
    end
    cuenta = Cuenta.find(movimiento_search.cuenta_id).descripcion
    @file_name = "Movimientos - Por #{agrupado}"
    subtitle =  "Del #{movimiento_search.fecha_desde} al #{movimiento_search.fecha_hasta} - " + 
                "Cuenta: #{cuenta}" + ((agrupado.blank?)? "" : " - #{agrupado.capitalize}")
    header("Movimientos", subtitle)
    body(movimiento_search)
    footer("Movimientos")
  end

  def file_name
    "#{@file_name}.pdf"
  end

private
  def NewDate(fecha, separador = "/")
    fecha_array = Array.new(3).zip(fecha.split(separador)).transpose.last.reverse.map(&:to_i)
    return Date.new(fecha_array[0], fecha_array[1], fecha_array[2]) 
  end

  def body(movimiento)
    fecha_desde = NewDate(movimiento.fecha_desde)
    fecha_hasta = NewDate(movimiento.fecha_hasta)
    movimientos = Movimiento.movimientos_con_saldo(fecha_desde, fecha_hasta, movimiento.cuenta_id)
    if movimientos.empty?
      text "- No se han encontrado movimientos para su consulta -", align: :center
    else
      data = movimientos.map { |m| detail_row(m) }
      print_details(data)
    end
  end

  def detail_row(movimiento)
    # if movimiento.es_contrasiento
    #   if movimiento.es_debito
    #     deb = {content: "(c) #{deb}", font_style: :italic}
    #   else
    #     cred = {content: "(c) #{cred}", font_style: :italic}
    #   end
    # else
      if movimiento.es_debito
        cred = ""
        deb = number_to_currency(movimiento.importe)
      else
        cred = number_to_currency(movimiento.importe)
        deb = ""
      end
    # end
    sdo = number_to_currency(movimiento.saldo)
    return [movimiento.updated_at.strftime('%d/%m/%Y %T'), movimiento.fecha_mov.strftime('%d/%m/%Y'),
            movimiento.transaccion_id, movimiento.trx_desc, cred, deb, sdo]
  end

  def print_details(data)
    data = TABLE_HEADER + data
    table data do
      self.header = true
      self.column_widths = [80, 45, 40, 195, 60, 60, 60]
      self.position = :center
      column(0..1).align = :center
      column(2).align = :right
      column(4..6).align = :right
      cells.style(borders: [], padding: [2,2,2,2], size: 8)
      row(0).style(align: :center, borders: [:bottom], border_width: 1, font_style: :bold)
    end
    #move_down 10
  end
end