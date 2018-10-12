class MovEntreFechasPdf < Prawn::Document
  include PdfReport
  include ApplicationHelper
  include ActionView::Helpers::NumberHelper 
  include MovEntreFechasSearchHelper
  include ActionView::Helpers::TextHelper

  TABLE_HEADER = ["Fec. Real", "Fec. Mov.", "Cód. Trx.", "Transacción", "Crédito", "Débito", "Saldo"]

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
  def body(movimiento)
    fecha_desde = str_to_date(movimiento.fecha_desde)
    fecha_hasta = str_to_date(movimiento.fecha_hasta)
    if movimiento.tipo_informe.to_i == 1
      movimientos = Movimiento.movimientos_con_saldo(fecha_desde, fecha_hasta, movimiento.cuenta_id)
    else
      movimientos = Movimiento.movimientos_con_saldo_por_usuario(fecha_desde, fecha_hasta, movimiento.cuenta_id)      
    end
    if movimientos.empty?
      text "- No se han encontrado movimientos para su consulta -", align: :center
    else
      if movimiento.tipo_informe.to_i == 1
        data = movimientos.map { |m| detail_row(m) }
        print_details(data, movimiento.tipo_informe)        
      else
        entró = false
        movimientos.group_by{|m| "#{m.usuario_id} - #{m.nombre_usuario}"}.each do |k, v|
          move_down 15 if entró
          entró = true
          text "<b>Usuario:</b> #{k}", size: 8, align: :left, inline_format: true
          data = v.map do |t| 
            row = detail_row(t)
            row.take(row.size - 1)
          end
          total_cred = v.select {|t| not t.es_debito }.sum {|t| t.importe}
          total_deb = v.select {|t| t.es_debito }.sum {|t| t.importe}
          print_details(data, movimiento.tipo_informe, total_cred, total_deb)
        end
      end
    end
  end

  def detail_row(movimiento)
    created_at = movimiento.created_at.strftime('%d/%m/%Y %T') if movimiento.created_at
    fecha_mov = movimiento.fecha_mov.strftime('%d/%m/%Y') if movimiento.fecha_mov
    trx_id = movimiento.transaccion_id
    if movimiento.transaccion_id
      s = movimiento.es_contrasiento ? "(c) " : ""
      fs = :normal
      cred = deb = ""
      if movimiento.es_debito
        deb = number_to_currency(movimiento.importe)
        deb = {content: "#{s}#{deb}", font_style: fs}
      else
        cred = number_to_currency(movimiento.importe)
        cred = {content: "#{s}#{cred}", font_style: fs}
      end
      trx_desc = movimiento.trx_desc      
      sdo = number_to_currency(movimiento.saldo)
    else
      trx_desc = {content: movimiento.trx_desc, font_style: :italic}
      sdo = {content: number_to_currency(movimiento.saldo), font_style: :italic}
    end    
    return [created_at, fecha_mov, trx_id, trx_desc, cred, deb, sdo]
  end

  def print_details(data, tipo_informe, total_cred, total_deb)
    header = (tipo_informe.to_i == 1) ? TABLE_HEADER : TABLE_HEADER.take(data[0].size)
    if tipo_informe.to_i == 2
      row = ["#{pluralize(data.size, "movimiento", "movimientos")}", { content: "Total: ", colspan: 3 }, 
             number_to_currency(total_cred), number_to_currency(total_deb)]
      data << row
    end
    data.unshift(header)
    table data do
      self.header = true
      self.column_widths = [80, 45, 40, 210, 60, 60, 60]
      self.position = :center
      column(0..1).align = :center
      column(2).align = :right
      column(4..6).align = :right
      cells.style(borders: [], padding: [2,2,2,2], size: 8)
      row(0).style(align: :center, borders: [:bottom], border_width: 0.1, font_style: :bold)
      row(data.size - 1).style(align: :right, borders: [:top], border_width: 0.1)
      row(data.size - 1).column(0).style(align: :left, font_style: :italic)
    end
  end
end