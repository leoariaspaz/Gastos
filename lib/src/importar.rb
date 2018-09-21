def current_user
	@current_user ||= Usuario.first
end

puts "Eliminando datos"
Empresa.delete_all
Usuario.delete_all
Cuenta.delete_all
TipoTransaccion.delete_all
Movimiento.delete_all

cuentas = Hash.new
ttrxs = Hash.new
trxs = Hash.new
movs = Hash.new

# ======================
# empresa
# ======================
e = Empresa.create!(razon_social: 'default', nombre_fantasia: 'Empresa por defecto')
puts "Se ha creado empresa default"

# ======================
# usuario
# ======================
usr = Usuario.create!(nombre: "Administrador", email: "leoariaspaz@gmail.com", password: "123456", es_admin: true, empresa: e)
puts "Se ha creado usuario Administrador"

# ======================
# cuentas
# ======================
c = Cuenta.create!(descripcion: 'Cris', saldo_inicial: 0.00, habilitado: true, empresa: e)
cuentas[1] = c.id
c = Cuenta.create!(descripcion: 'Efectivo', saldo_inicial: 13484.40, habilitado: true, empresa: e)
cuentas[2] = c.id
c = Cuenta.create!(descripcion: 'Débito BSE', saldo_inicial: 27305.51, habilitado: true, empresa: e)
cuentas[3] = c.id
c = Cuenta.create!(descripcion: 'Débito Hipotecario', saldo_inicial: 5019.26, habilitado: true, empresa: e)
cuentas[4] = c.id
puts "Cuentas: \n#{cuentas} \n\n"

# ======================
# tipos de transacciones
# ======================
tt = TipoTransaccion.create!(descripcion: "Automóvil", habilitado: true, empresa: e)
ttrxs[28] = tt.id
tt = TipoTransaccion.create!(descripcion: "Bancos", habilitado: true, empresa: e)
ttrxs[34] = tt.id
tt = TipoTransaccion.create!(descripcion: "Bebidas", habilitado: true, empresa: e)
ttrxs[40] = tt.id
tt = TipoTransaccion.create!(descripcion: "Beneficios", habilitado: true, empresa: e)
ttrxs[25] = tt.id
tt = TipoTransaccion.create!(descripcion: "Caja", habilitado: true, empresa: e)
ttrxs[30] = tt.id
tt = TipoTransaccion.create!(descripcion: "Carpintería", habilitado: true, empresa: e)
ttrxs[36] = tt.id
tt = TipoTransaccion.create!(descripcion: "Colaboraciones", habilitado: true, empresa: e)
ttrxs[24] = tt.id
tt = TipoTransaccion.create!(descripcion: "Comida", habilitado: true, empresa: e)
ttrxs[3] = tt.id
tt = TipoTransaccion.create!(descripcion: "Computación", habilitado: true, empresa: e)
ttrxs[20] = tt.id
tt = TipoTransaccion.create!(descripcion: "Construcción", habilitado: true, empresa: e)
ttrxs[31] = tt.id
tt = TipoTransaccion.create!(descripcion: "Electricidad", habilitado: true, empresa: e)
ttrxs[9] = tt.id
tt = TipoTransaccion.create!(descripcion: "Empleada", habilitado: true, empresa: e)
ttrxs[22] = tt.id
tt = TipoTransaccion.create!(descripcion: "Estudio", habilitado: true, empresa: e)
ttrxs[23] = tt.id
tt = TipoTransaccion.create!(descripcion: "Farmacia", habilitado: true, empresa: e)
ttrxs[7] = tt.id
tt = TipoTransaccion.create!(descripcion: "Financieras", habilitado: true, empresa: e)
ttrxs[21] = tt.id
tt = TipoTransaccion.create!(descripcion: "Hobbies", habilitado: true, empresa: e)
ttrxs[18] = tt.id
tt = TipoTransaccion.create!(descripcion: "Hogar", habilitado: true, empresa: e)
ttrxs[35] = tt.id
tt = TipoTransaccion.create!(descripcion: "Hospedaje", habilitado: true, empresa: e)
ttrxs[38] = tt.id
tt = TipoTransaccion.create!(descripcion: "Impuesto/Servicio", habilitado: true, empresa: e)
ttrxs[39] = tt.id
tt = TipoTransaccion.create!(descripcion: "Indumentaria", habilitado: true, empresa: e)
ttrxs[6] = tt.id
tt = TipoTransaccion.create!(descripcion: "Jardinería", habilitado: true, empresa: e)
ttrxs[17] = tt.id
tt = TipoTransaccion.create!(descripcion: "Juegos de azar", habilitado: true, empresa: e)
ttrxs[1] = tt.id
tt = TipoTransaccion.create!(descripcion: "Librería", habilitado: true, empresa: e)
ttrxs[33] = tt.id
tt = TipoTransaccion.create!(descripcion: "Limpieza", habilitado: true, empresa: e)
ttrxs[32] = tt.id
tt = TipoTransaccion.create!(descripcion: "Mascotas", habilitado: true, empresa: e)
ttrxs[37] = tt.id
tt = TipoTransaccion.create!(descripcion: "Médicos", habilitado: true, empresa: e)
ttrxs[11] = tt.id
tt = TipoTransaccion.create!(descripcion: "Motocicleta", habilitado: true, empresa: e)
ttrxs[13] = tt.id
tt = TipoTransaccion.create!(descripcion: "Papelería", habilitado: true, empresa: e)
ttrxs[26] = tt.id
tt = TipoTransaccion.create!(descripcion: "Peluquería", habilitado: true, empresa: e)
ttrxs[10] = tt.id
tt = TipoTransaccion.create!(descripcion: "Perfumería", habilitado: true, empresa: e)
ttrxs[29] = tt.id
tt = TipoTransaccion.create!(descripcion: "Plomería", habilitado: true, empresa: e)
ttrxs[16] = tt.id
tt = TipoTransaccion.create!(descripcion: "Regalos", habilitado: true, empresa: e)
ttrxs[2] = tt.id
tt = TipoTransaccion.create!(descripcion: "Remedios", habilitado: true, empresa: e)
ttrxs[27] = tt.id
tt = TipoTransaccion.create!(descripcion: "Reparaciones", habilitado: true, empresa: e)
ttrxs[42] = tt.id
tt = TipoTransaccion.create!(descripcion: "Ropa", habilitado: true, empresa: e)
ttrxs[8] = tt.id
tt = TipoTransaccion.create!(descripcion: "Salidas", habilitado: true, empresa: e)
ttrxs[14] = tt.id
tt = TipoTransaccion.create!(descripcion: "Seguro", habilitado: true, empresa: e)
ttrxs[4] = tt.id
tt = TipoTransaccion.create!(descripcion: "Sueldos", habilitado: true, empresa: e)
ttrxs[19] = tt.id
tt = TipoTransaccion.create!(descripcion: "Supermercado", habilitado: true, empresa: e)
ttrxs[12] = tt.id
tt = TipoTransaccion.create!(descripcion: "Transporte", habilitado: true, empresa: e)
ttrxs[5] = tt.id
tt = TipoTransaccion.create!(descripcion: "Ventas", habilitado: true, empresa: e)
ttrxs[15] = tt.id
tt = TipoTransaccion.create!(descripcion: "Viajes", habilitado: true, empresa: e)
ttrxs[41] = tt.id
puts "Tipos de transacciones: \n#{ttrxs} \n\n"

# ======================
# transacciones
# ======================
t = Transaccion.create!(descripcion: "Accesorios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[1] = t.id
t = Transaccion.create!(descripcion: "Accesorios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[20],  empresa: e)
trxs[2] = t.id
t = Transaccion.create!(descripcion: "Accesorios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[3] = t.id
t = Transaccion.create!(descripcion: "Accesorios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[4] = t.id
t = Transaccion.create!(descripcion: "Acreditación BSE", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[19],  empresa: e)
trxs[5] = t.id
t = Transaccion.create!(descripcion: "Acreditación plazo fijo", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[6] = t.id
t = Transaccion.create!(descripcion: "Acreditación Provincia", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[7] = t.id
t = Transaccion.create!(descripcion: "Aguas de Santiago", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[8] = t.id
t = Transaccion.create!(descripcion: "Ajuste por sobrante de caja", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[9] = t.id
t = Transaccion.create!(descripcion: "Alquiler", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[10] = t.id
t = Transaccion.create!(descripcion: "Baño", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[11] = t.id
t = Transaccion.create!(descripcion: "Bazar", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[12] = t.id
t = Transaccion.create!(descripcion: "Bazar", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[13] = t.id
t = Transaccion.create!(descripcion: "Bebidas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[14] = t.id
t = Transaccion.create!(descripcion: "Bebidas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[15] = t.id
t = Transaccion.create!(descripcion: "Bijouterie", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[16] = t.id
t = Transaccion.create!(descripcion: "Bijouterie", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[17] = t.id
t = Transaccion.create!(descripcion: "Boleto de colectivo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[18] = t.id
t = Transaccion.create!(descripcion: "Boleto larga distancia", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[19] = t.id
t = Transaccion.create!(descripcion: "Bono por día del bancario", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[19],  empresa: e)
trxs[20] = t.id
t = Transaccion.create!(descripcion: "Calzados", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[21] = t.id
t = Transaccion.create!(descripcion: "Cambio de modelo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[22] = t.id
t = Transaccion.create!(descripcion: "Cambio de modelo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[23] = t.id
t = Transaccion.create!(descripcion: "Carbón", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[24] = t.id
t = Transaccion.create!(descripcion: "Carga tarjeta bus", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[25] = t.id
t = Transaccion.create!(descripcion: "Carnicería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[26] = t.id
t = Transaccion.create!(descripcion: "Carnicería de cerdo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[27] = t.id
t = Transaccion.create!(descripcion: "Cédulas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[28] = t.id
t = Transaccion.create!(descripcion: "Cena con personal BSE", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[29] = t.id
t = Transaccion.create!(descripcion: "Cine", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[30] = t.id
t = Transaccion.create!(descripcion: "Colaboraciones", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[31] = t.id
t = Transaccion.create!(descripcion: "Comidas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[32] = t.id
t = Transaccion.create!(descripcion: "Comidas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[33] = t.id
t = Transaccion.create!(descripcion: "Comidas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[34] = t.id
t = Transaccion.create!(descripcion: "Compra de dólares", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[35] = t.id
t = Transaccion.create!(descripcion: "Consigna de equipaje", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[38],  empresa: e)
trxs[36] = t.id
t = Transaccion.create!(descripcion: "Constitución de Plazo fijo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[37] = t.id
t = Transaccion.create!(descripcion: "Consulta", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[11],  empresa: e)
trxs[38] = t.id
t = Transaccion.create!(descripcion: "Cosmética", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[29],  empresa: e)
trxs[39] = t.id
t = Transaccion.create!(descripcion: "Cosméticos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[40] = t.id
t = Transaccion.create!(descripcion: "Cosméticos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[29],  empresa: e)
trxs[41] = t.id
t = Transaccion.create!(descripcion: "Crédito colectivo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[42] = t.id
t = Transaccion.create!(descripcion: "Cuota de auto Chevrolet Prisma", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[21],  empresa: e)
trxs[43] = t.id
t = Transaccion.create!(descripcion: "Cuota de inglés", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[44] = t.id
t = Transaccion.create!(descripcion: "Cuota de plan de ahorro", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[45] = t.id
t = Transaccion.create!(descripcion: "Cuota del Colegio de Abogados", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[46] = t.id
t = Transaccion.create!(descripcion: "Cuota Préstamo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[47] = t.id
t = Transaccion.create!(descripcion: "Débitos varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[48] = t.id
t = Transaccion.create!(descripcion: "Decoración", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[49] = t.id
t = Transaccion.create!(descripcion: "Depósito por ventanilla", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[50] = t.id
t = Transaccion.create!(descripcion: "Depósito por ventanilla de banco", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[51] = t.id
t = Transaccion.create!(descripcion: "Derecho de adjudicación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[52] = t.id
t = Transaccion.create!(descripcion: "Desayunos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[53] = t.id
t = Transaccion.create!(descripcion: "Desayunos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[54] = t.id
t = Transaccion.create!(descripcion: "Desayunos o meriendas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[55] = t.id
t = Transaccion.create!(descripcion: "Descuentos", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[12],  empresa: e)
trxs[56] = t.id
t = Transaccion.create!(descripcion: "Devolución de gastos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[57] = t.id
t = Transaccion.create!(descripcion: "Devolución de gastos", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[58] = t.id
t = Transaccion.create!(descripcion: "Devolución de gastos", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[59] = t.id
t = Transaccion.create!(descripcion: "Devolución de gastos", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[30],  empresa: e)
trxs[60] = t.id
t = Transaccion.create!(descripcion: "Devolución IVA", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[25],  empresa: e)
trxs[61] = t.id
t = Transaccion.create!(descripcion: "Devolución IVA", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[62] = t.id
t = Transaccion.create!(descripcion: "Devolución subway", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[63] = t.id
t = Transaccion.create!(descripcion: "Diligenciamiento de oficios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[64] = t.id
t = Transaccion.create!(descripcion: "Donación", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[65] = t.id
t = Transaccion.create!(descripcion: "Edese", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[66] = t.id
t = Transaccion.create!(descripcion: "Electricidad", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[31],  empresa: e)
trxs[67] = t.id
t = Transaccion.create!(descripcion: "Encomiendas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[68] = t.id
t = Transaccion.create!(descripcion: "Entradas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[69] = t.id
t = Transaccion.create!(descripcion: "Entrega de donación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[70] = t.id
t = Transaccion.create!(descripcion: "Envío de transferencias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[71] = t.id
t = Transaccion.create!(descripcion: "Envío de transferencias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[72] = t.id
t = Transaccion.create!(descripcion: "Estacionamiento", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[73] = t.id
t = Transaccion.create!(descripcion: "Expensas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[74] = t.id
t = Transaccion.create!(descripcion: "Extracción por ATM", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[30],  empresa: e)
trxs[75] = t.id
t = Transaccion.create!(descripcion: "Extracción por ATM", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[76] = t.id
t = Transaccion.create!(descripcion: "Extracción por caja", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[77] = t.id
t = Transaccion.create!(descripcion: "Extracción por línea de cajas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[78] = t.id
t = Transaccion.create!(descripcion: "Fallo de caja", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[30],  empresa: e)
trxs[79] = t.id
t = Transaccion.create!(descripcion: "Ferretería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[80] = t.id
t = Transaccion.create!(descripcion: "Fiambrería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[81] = t.id
t = Transaccion.create!(descripcion: "Fotocopias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[82] = t.id
t = Transaccion.create!(descripcion: "Fotocopias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[83] = t.id
t = Transaccion.create!(descripcion: "Fotocopias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[84] = t.id
t = Transaccion.create!(descripcion: "Fotocopias", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[33],  empresa: e)
trxs[85] = t.id
t = Transaccion.create!(descripcion: "Gasnor", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[86] = t.id
t = Transaccion.create!(descripcion: "Golosinas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[87] = t.id
t = Transaccion.create!(descripcion: "Heladería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[88] = t.id
t = Transaccion.create!(descripcion: "Heladería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[89] = t.id
t = Transaccion.create!(descripcion: "Heladería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[90] = t.id
t = Transaccion.create!(descripcion: "Herramientas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[91] = t.id
t = Transaccion.create!(descripcion: "Honorarios profesionales", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[92] = t.id
t = Transaccion.create!(descripcion: "Iluminación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[93] = t.id
t = Transaccion.create!(descripcion: "Impuesto municipal", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[94] = t.id
t = Transaccion.create!(descripcion: "Impuesto municipal", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[95] = t.id
t = Transaccion.create!(descripcion: "Inglés", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[96] = t.id
t = Transaccion.create!(descripcion: "Insumos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[97] = t.id
t = Transaccion.create!(descripcion: "Interés de caja de ahorro", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[98] = t.id
t = Transaccion.create!(descripcion: "Interés de plazo fijo", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[99] = t.id
t = Transaccion.create!(descripcion: "Jardinería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[100] = t.id
t = Transaccion.create!(descripcion: "Jardinería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[101] = t.id
t = Transaccion.create!(descripcion: "Juguetes", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[102] = t.id
t = Transaccion.create!(descripcion: "Lavado", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[103] = t.id
t = Transaccion.create!(descripcion: "Lavado", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[13],  empresa: e)
trxs[104] = t.id
t = Transaccion.create!(descripcion: "Lavado", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[105] = t.id
t = Transaccion.create!(descripcion: "Librería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[106] = t.id
t = Transaccion.create!(descripcion: "Librería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[107] = t.id
t = Transaccion.create!(descripcion: "Libros", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[33],  empresa: e)
trxs[108] = t.id
t = Transaccion.create!(descripcion: "Licencia de conductor", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[109] = t.id
t = Transaccion.create!(descripcion: "Limosna", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[110] = t.id
t = Transaccion.create!(descripcion: "Limosna", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[111] = t.id
t = Transaccion.create!(descripcion: "Limpieza", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[29],  empresa: e)
trxs[112] = t.id
t = Transaccion.create!(descripcion: "Limpieza", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[113] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[114] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[9],  empresa: e)
trxs[115] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[13],  empresa: e)
trxs[116] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[16],  empresa: e)
trxs[117] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[17],  empresa: e)
trxs[118] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[22],  empresa: e)
trxs[119] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[120] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[31],  empresa: e)
trxs[121] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[32],  empresa: e)
trxs[122] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[36],  empresa: e)
trxs[123] = t.id
t = Transaccion.create!(descripcion: "Materiales de construcción", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[9],  empresa: e)
trxs[124] = t.id
t = Transaccion.create!(descripcion: "Materiales de construcción", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[16],  empresa: e)
trxs[125] = t.id
t = Transaccion.create!(descripcion: "Materiales de construcción", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[31],  empresa: e)
trxs[126] = t.id
t = Transaccion.create!(descripcion: "Materiales de construcción", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[127] = t.id
t = Transaccion.create!(descripcion: "Medicamentos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[128] = t.id
t = Transaccion.create!(descripcion: "Medicamentos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[129] = t.id
t = Transaccion.create!(descripcion: "Meriendas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[130] = t.id
t = Transaccion.create!(descripcion: "Metro", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[131] = t.id
t = Transaccion.create!(descripcion: "Monotributo AFIP", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[132] = t.id
t = Transaccion.create!(descripcion: "Muebles", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[133] = t.id
t = Transaccion.create!(descripcion: "Nafta", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[134] = t.id
t = Transaccion.create!(descripcion: "Natación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[135] = t.id
t = Transaccion.create!(descripcion: "Natación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[136] = t.id
t = Transaccion.create!(descripcion: "Nueva licencia de conducir", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[137] = t.id
t = Transaccion.create!(descripcion: "Nueva licencia de conducir", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[11],  empresa: e)
trxs[138] = t.id
t = Transaccion.create!(descripcion: "Nueva licencia de conducir", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[139] = t.id
t = Transaccion.create!(descripcion: "Ortopedia", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[140] = t.id
t = Transaccion.create!(descripcion: "Pago de honorarios profesionales", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[141] = t.id
t = Transaccion.create!(descripcion: "Pago de impuesto/servicio", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[142] = t.id
t = Transaccion.create!(descripcion: "Pago de tarjeta Visa", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[143] = t.id
t = Transaccion.create!(descripcion: "Papas fritas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[144] = t.id
t = Transaccion.create!(descripcion: "Papelería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[145] = t.id
t = Transaccion.create!(descripcion: "Papelería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[146] = t.id
t = Transaccion.create!(descripcion: "Parte de pago", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[147] = t.id
t = Transaccion.create!(descripcion: "Parte de pago", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[31],  empresa: e)
trxs[148] = t.id
t = Transaccion.create!(descripcion: "Parte de pago de flete y patente", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[149] = t.id
t = Transaccion.create!(descripcion: "Perfumería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[150] = t.id
t = Transaccion.create!(descripcion: "Perfumería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[151] = t.id
t = Transaccion.create!(descripcion: "Perfumería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[29],  empresa: e)
trxs[152] = t.id
t = Transaccion.create!(descripcion: "Perfumería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[153] = t.id
t = Transaccion.create!(descripcion: "Pescadería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[154] = t.id
t = Transaccion.create!(descripcion: "Pilates", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[155] = t.id
t = Transaccion.create!(descripcion: "Plus de consulta", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[11],  empresa: e)
trxs[156] = t.id
t = Transaccion.create!(descripcion: "Plus vacacional", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[19],  empresa: e)
trxs[157] = t.id
t = Transaccion.create!(descripcion: "Pollería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[158] = t.id
t = Transaccion.create!(descripcion: "Promoción Banco Hipotecario", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[25],  empresa: e)
trxs[159] = t.id
t = Transaccion.create!(descripcion: "Promoción Banco Hipotecario", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[160] = t.id
t = Transaccion.create!(descripcion: "Propinas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[161] = t.id
t = Transaccion.create!(descripcion: "Propinas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[162] = t.id
t = Transaccion.create!(descripcion: "Propinas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[163] = t.id
t = Transaccion.create!(descripcion: "Recarga celular", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[164] = t.id
t = Transaccion.create!(descripcion: "Recarga de tarjeta de colectivo", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[165] = t.id
t = Transaccion.create!(descripcion: "Recepción de depósito en efectivo", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[166] = t.id
t = Transaccion.create!(descripcion: "Recepción de depósito en efectivo", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[167] = t.id
t = Transaccion.create!(descripcion: "Recepción de transferencias", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[168] = t.id
t = Transaccion.create!(descripcion: "Recepción de transferencias", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[169] = t.id
t = Transaccion.create!(descripcion: "Regalos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[170] = t.id
t = Transaccion.create!(descripcion: "Remis a casa", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[171] = t.id
t = Transaccion.create!(descripcion: "Remisse", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[172] = t.id
t = Transaccion.create!(descripcion: "Remisse", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[173] = t.id
t = Transaccion.create!(descripcion: "Rentas municipal", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[174] = t.id
t = Transaccion.create!(descripcion: "Reparación", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[175] = t.id
t = Transaccion.create!(descripcion: "Repuestos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[176] = t.id
t = Transaccion.create!(descripcion: "Resma de papel legal", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[177] = t.id
t = Transaccion.create!(descripcion: "Retiro de efectivo por línea de cajas", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[178] = t.id
t = Transaccion.create!(descripcion: "Rifa", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[1],  empresa: e)
trxs[179] = t.id
t = Transaccion.create!(descripcion: "Ropa", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[180] = t.id
t = Transaccion.create!(descripcion: "Ropa", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[181] = t.id
t = Transaccion.create!(descripcion: "Ropa interior", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[182] = t.id
t = Transaccion.create!(descripcion: "Rotisería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[183] = t.id
t = Transaccion.create!(descripcion: "Seguro de la moto", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[4],  empresa: e)
trxs[184] = t.id
t = Transaccion.create!(descripcion: "Seguro de la moto", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[185] = t.id
t = Transaccion.create!(descripcion: "Seguro de la moto", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[186] = t.id
t = Transaccion.create!(descripcion: "Seguro de vida", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[4],  empresa: e)
trxs[187] = t.id
t = Transaccion.create!(descripcion: "Seguro de vida", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[34],  empresa: e)
trxs[188] = t.id
t = Transaccion.create!(descripcion: "Seguro de vida", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[39],  empresa: e)
trxs[189] = t.id
t = Transaccion.create!(descripcion: "Sueldo de la Cooperativa", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[190] = t.id
t = Transaccion.create!(descripcion: "Supermercado", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[12],  empresa: e)
trxs[191] = t.id
t = Transaccion.create!(descripcion: "Tarjeta bus", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[192] = t.id
t = Transaccion.create!(descripcion: "Taxi", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[193] = t.id
t = Transaccion.create!(descripcion: "Vacunas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[194] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[2],  empresa: e)
trxs[195] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[196] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[197] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[198] = t.id
t = Transaccion.create!(descripcion: "Compra de indumentaria", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[8],  empresa: e)
trxs[199] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[10],  empresa: e)
trxs[200] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[12],  empresa: e)
trxs[201] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[14],  empresa: e)
trxs[202] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[18],  empresa: e)
trxs[203] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[23],  empresa: e)
trxs[204] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[24],  empresa: e)
trxs[205] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[26],  empresa: e)
trxs[206] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[27],  empresa: e)
trxs[207] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[28],  empresa: e)
trxs[208] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[29],  empresa: e)
trxs[209] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[31],  empresa: e)
trxs[210] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[33],  empresa: e)
trxs[211] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[212] = t.id
t = Transaccion.create!(descripcion: "Varios", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[213] = t.id
t = Transaccion.create!(descripcion: "Venta de mampara y mesada", habilitado: true, es_debito: false, tipo_transaccion_id: ttrxs[15],  empresa: e)
trxs[214] = t.id
t = Transaccion.create!(descripcion: "Verdulería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[215] = t.id
t = Transaccion.create!(descripcion: "Zapatillas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[216] = t.id
t = Transaccion.create!(descripcion: "Zapatos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[6],  empresa: e)
trxs[217] = t.id
t = Transaccion.create!(descripcion: "Panadería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[3],  empresa: e)
trxs[218] = t.id
t = Transaccion.create!(descripcion: "Gaseosas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[40],  empresa: e)
trxs[219] = t.id
t = Transaccion.create!(descripcion: "Agua mineral", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[40],  empresa: e)
trxs[220] = t.id
t = Transaccion.create!(descripcion: "Plus de estudio médico", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[11],  empresa: e)
trxs[221] = t.id
t = Transaccion.create!(descripcion: "Insumos para análisis médicos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[7],  empresa: e)
trxs[222] = t.id
t = Transaccion.create!(descripcion: "Peaje", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[5],  empresa: e)
trxs[223] = t.id
t = Transaccion.create!(descripcion: "Hospedaje", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[41],  empresa: e)
trxs[224] = t.id
t = Transaccion.create!(descripcion: "Alcohólicas", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[40],  empresa: e)
trxs[225] = t.id
t = Transaccion.create!(descripcion: "Kinesiología", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[11],  empresa: e)
trxs[226] = t.id
t = Transaccion.create!(descripcion: "Lavado o tintorería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[8],  empresa: e)
trxs[227] = t.id
t = Transaccion.create!(descripcion: "Peluquería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[37],  empresa: e)
trxs[228] = t.id
t = Transaccion.create!(descripcion: "Mano de obra", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[42],  empresa: e)
trxs[229] = t.id
t = Transaccion.create!(descripcion: "Repuestos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[42],  empresa: e)
trxs[230] = t.id
t = Transaccion.create!(descripcion: "Mercería", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[42],  empresa: e)
trxs[231] = t.id
t = Transaccion.create!(descripcion: "Compra de bijouterie", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[8],  empresa: e)
trxs[232] = t.id
t = Transaccion.create!(descripcion: "Electrodomésticos", habilitado: true, es_debito: true, tipo_transaccion_id: ttrxs[35],  empresa: e)
trxs[233] = t.id
puts "Transacciones: \n#{trxs} \n\n"

# ======================
# movimientos
# ======================
m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[76], importe: -400.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/18', transaccion_id: trxs[164], importe: -50.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[2] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/19', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[3] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/19', transaccion_id: trxs[96], importe: -1170.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[4] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/26', transaccion_id: trxs[5], importe: 26323.06.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[5] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[71], importe: -15000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[6] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[164], importe: -170.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[7] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[76], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[8] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/17', transaccion_id: trxs[176], importe: -205.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[9] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[86], importe: -127.45.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[10] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[86], importe: -127.45.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[11] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[8], importe: -133.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[12] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[174], importe: -492.54.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[13] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[66], importe: -71.53.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[14] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/26', transaccion_id: trxs[76], importe: -300.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[15] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[5], importe: 26557.89.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[16] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[31], importe: -50.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[17] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[66], importe: -391.16.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[18] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[164], importe: -220.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[19] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[71], importe: -20000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[20] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[209], importe: -89.08.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[21] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[212], importe: -29.19.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[22] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[196], importe: -1220.28.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[23] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[113], importe: -109.67.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[24] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[26], importe: -688.32.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[25] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[81], importe: -77.33.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[26] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[201], importe: -3.48.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[27] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[56], importe: 162.11.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[28] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[169], importe: 3302.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[29] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[77], importe: -26400.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[30] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/29', transaccion_id: trxs[5], importe: 39989.89.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[31] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/29', transaccion_id: trxs[31], importe: -50.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[32] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/02', transaccion_id: trxs[8], importe: -133.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[33] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/02', transaccion_id: trxs[66], importe: -377.25.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[34] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/07', transaccion_id: trxs[77], importe: -10000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[35] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/09', transaccion_id: trxs[164], importe: -220.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[36] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/09', transaccion_id: trxs[132], importe: -66.77.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[37] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/14', transaccion_id: trxs[77], importe: -1000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[38] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[77], importe: -15000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[39] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[86], importe: -338.34.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[40] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[169], importe: 20000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[41] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/28', transaccion_id: trxs[5], importe: 24598.76.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[42] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[77], importe: -7000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[43] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[76], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[44] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[8], importe: -133.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[45] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[66], importe: -235.10.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[46] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[76], importe: -300.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[47] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/07', transaccion_id: trxs[76], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[48] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/08', transaccion_id: trxs[169], importe: 7100.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[49] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/08', transaccion_id: trxs[76], importe: -4500.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[50] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/09', transaccion_id: trxs[164], importe: -220.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[51] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[52] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/18', transaccion_id: trxs[8], importe: -133.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[53] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/30', transaccion_id: trxs[5], importe: 24859.34.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[54] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[7], importe: 28400.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[55] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[71], importe: -20000.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[56] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[76], importe: -2000.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[57] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[7], importe: 7100.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[58] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/08', transaccion_id: trxs[71], importe: -7100.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[59] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[76], importe: -500.00.abs, cuenta_id: cuentas[1], empresa: e, usuario: usr)
movs[60] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[164], importe: -100.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[61] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[71], importe: -3000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[62] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[61], importe: 15.56.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[63] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/13', transaccion_id: trxs[139], importe: -125.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[64] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/13', transaccion_id: trxs[71], importe: -4000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[65] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[167], importe: 7000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[66] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[5], importe: 23057.28.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[67] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/28', transaccion_id: trxs[71], importe: -7000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[68] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[66], importe: -136.64.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[69] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/02', transaccion_id: trxs[164], importe: -100.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[70] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/02', transaccion_id: trxs[71], importe: -30000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[71] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[20], importe: 17870.20.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[72] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[76], importe: -200.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[73] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[216], importe: -190.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[74] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[71], importe: -1500.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[75] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[71], importe: -10000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[76] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/24', transaccion_id: trxs[77], importe: -200.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[77] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/29', transaccion_id: trxs[5], importe: 18921.77.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[78] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[164], importe: -140.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[79] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/02', transaccion_id: trxs[8], importe: -107.13.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[80] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/02', transaccion_id: trxs[66], importe: -147.54.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[81] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[50], importe: 70000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[82] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[71], importe: -70500.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[83] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[71], importe: -10000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[84] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[62], importe: 7.85.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[85] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[86], importe: -50.79.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[86] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[87] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/13', transaccion_id: trxs[5], importe: 5729.56.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[88] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[71], importe: -7000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[89] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[5], importe: 10000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[90] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[77], importe: -100.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[91] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[76], importe: -100.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[92] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[5], importe: 36207.67.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[93] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/02', transaccion_id: trxs[71], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[94] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/05', transaccion_id: trxs[5], importe: 5925.15.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[95] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/05', transaccion_id: trxs[66], importe: -147.54.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[96] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/05', transaccion_id: trxs[8], importe: -108.23.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[97] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/05', transaccion_id: trxs[86], importe: -50.79.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[98] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[164], importe: -170.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[99] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/08', transaccion_id: trxs[71], importe: -50000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[100] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[198], importe: -150.88.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[101] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[209], importe: -29.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[102] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[196], importe: -102.46.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[103] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[201], importe: -0.50.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[104] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[105] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[71], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[106] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/20', transaccion_id: trxs[157], importe: 4032.06.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[107] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[196], importe: -173.96.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[108] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[201], importe: -0.50.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[109] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[191], importe: 19.80.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[110] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[142], importe: -107.13.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[111] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[142], importe: -117.52.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[112] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/23', transaccion_id: trxs[142], importe: -205.21.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[113] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[35], importe: -11501.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[114] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[50], importe: 13000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[115] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/27', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[116] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/31', transaccion_id: trxs[5], importe: 19299.71.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[117] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/05', transaccion_id: trxs[32], importe: -224.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[118] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/05', transaccion_id: trxs[164], importe: -70.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[119] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/05', transaccion_id: trxs[164], importe: -70.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[120] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[121] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[76], importe: -300.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[122] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[71], importe: -10000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[123] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/15', transaccion_id: trxs[71], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[124] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/21', transaccion_id: trxs[71], importe: -1.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[125] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/23', transaccion_id: trxs[5], importe: 27016.40.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[126] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[209], importe: -34.94.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[127] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[196], importe: -552.79.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[128] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[201], importe: -3.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[129] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[26], importe: -695.22.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[130] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[80], importe: -139.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[131] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[56], importe: 209.89.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[132] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[66], importe: -205.22.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[133] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/02', transaccion_id: trxs[72], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[134] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[164], importe: -140.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[135] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/12', transaccion_id: trxs[86], importe: -115.29.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[136] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/12', transaccion_id: trxs[71], importe: -15000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[137] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/01', transaccion_id: trxs[209], importe: -198.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[138] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[215], importe: -33.13.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[139] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[209], importe: -69.98.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[140] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[212], importe: -103.05.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[141] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[196], importe: -563.03.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[142] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[113], importe: -40.59.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[143] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[26], importe: -446.37.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[144] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[56], importe: 319.33.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[145] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[61], importe: 258.38.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[146] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[113], importe: -632.82.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[147] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[196], importe: -372.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[148] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[212], importe: -0.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[149] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[56], importe: 317.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[150] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[169], importe: 3000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[151] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/05', transaccion_id: trxs[143], importe: -4666.23.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[152] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[153] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[212], importe: -47.15.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[154] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[196], importe: -334.31.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[155] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[113], importe: -75.73.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[156] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[26], importe: -71.71.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[157] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[56], importe: 5.53.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[158] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[112], importe: -163.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[159] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[180], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[160] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[128], importe: -157.48.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[161] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/09', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[162] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/11', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[163] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[159], importe: 10.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[164] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[150], importe: -260.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[165] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/13', transaccion_id: trxs[169], importe: 4000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[166] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[89], importe: -150.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[167] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[196], importe: -100.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[168] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[212], importe: -44.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[169] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[113], importe: -28.85.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[170] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[26], importe: -124.63.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[171] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[215], importe: -10.64.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[172] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/14', transaccion_id: trxs[56], importe: 8.86.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[173] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/21', transaccion_id: trxs[140], importe: -98.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[174] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/21', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[175] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[90], importe: -75.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[176] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[212], importe: -89.43.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[177] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[26], importe: -386.64.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[178] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[196], importe: -134.35.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[179] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/25', transaccion_id: trxs[19], importe: -564.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[180] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[40], importe: -89.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[181] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[182] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[181], importe: -700.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[183] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[196], importe: -135.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[184] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[212], importe: -0.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[185] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[153], importe: -105.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[186] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[212], importe: -25.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[187] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[196], importe: -26.22.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[188] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/28', transaccion_id: trxs[169], importe: 7000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[189] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/28', transaccion_id: trxs[47], importe: -3149.29.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[190] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[19], importe: -654.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[191] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[196], importe: -444.74.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[192] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[212], importe: -0.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[193] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[196], importe: -127.02.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[194] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[56], importe: 93.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[195] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[6], importe: 36000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[196] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[99], importe: 754.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[197] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[98], importe: 0.35.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[198] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/02', transaccion_id: trxs[169], importe: 30000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[199] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[143], importe: -5134.80.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[200] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[37], importe: -60000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[201] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[212], importe: -47.99.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[202] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[196], importe: -45.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[203] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[62], importe: 298.04.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[204] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[128], importe: -69.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[205] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[209], importe: -110.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[206] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[216], importe: -950.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[207] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[208] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[8], importe: -229.94.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[209] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[160], importe: 10.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[210] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[211] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[169], importe: 1500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[212] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[209], importe: -41.31.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[213] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[212], importe: -306.58.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[214] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[196], importe: -539.83.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[215] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[113], importe: -43.74.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[216] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[212], importe: -39.24.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[217] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[56], importe: 184.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[218] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[30], importe: -80.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[219] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[14], importe: -35.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[220] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/14', transaccion_id: trxs[43], importe: -2591.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[221] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/16', transaccion_id: trxs[177], importe: -119.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[222] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[169], importe: 10000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[223] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[212], importe: -399.75.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[224] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[209], importe: -55.79.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[225] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[196], importe: -430.95.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[226] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[113], importe: -86.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[227] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[201], importe: -0.90.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[228] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[56], importe: 115.32.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[229] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[212], importe: -116.40.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[230] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[196], importe: -574.22.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[231] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[113], importe: -311.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[232] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[201], importe: -1.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[233] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[26], importe: -146.84.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[234] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[80], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[235] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[181], importe: -458.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[236] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[56], importe: 420.57.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[237] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[238] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/24', transaccion_id: trxs[196], importe: -10.87.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[239] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/27', transaccion_id: trxs[196], importe: -139.77.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[240] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/27', transaccion_id: trxs[201], importe: -0.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[241] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/29', transaccion_id: trxs[47], importe: -3138.26.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[242] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/29', transaccion_id: trxs[128], importe: -337.92.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[243] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[91], importe: -72.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[244] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[98], importe: 0.69.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[245] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[184], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[246] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[187], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[247] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[212], importe: -47.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[248] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[196], importe: -250.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[249] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[201], importe: -1.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[250] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[26], importe: -562.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[251] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[56], importe: 59.49.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[252] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/04', transaccion_id: trxs[89], importe: -150.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[253] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/04', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[254] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[6], importe: 60000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[255] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[99], importe: 1183.56.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[256] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[62], importe: 160.96.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[257] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[258] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[169], importe: 70500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[259] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[37], importe: -131500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[260] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[169], importe: 10000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[261] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[67], importe: -1868.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[262] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[12], importe: -346.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[263] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[93], importe: -2549.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[264] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[41], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[265] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[196], importe: -206.95.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[266] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[26], importe: -176.26.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[267] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[201], importe: -0.75.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[268] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[56], importe: 35.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[269] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[209], importe: -244.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[270] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[271] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[143], importe: -11095.06.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[272] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[273] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/13', transaccion_id: trxs[166], importe: 1000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[274] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/13', transaccion_id: trxs[93], importe: -759.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[275] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/17', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[276] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/18', transaccion_id: trxs[90], importe: -90.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[277] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/20', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[278] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[212], importe: -1562.74.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[279] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[101], importe: -168.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[280] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[169], importe: 7000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[281] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/22', transaccion_id: trxs[150], importe: -506.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[282] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[212], importe: -70.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[283] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[153], importe: -61.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[284] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[196], importe: -723.02.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[285] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[201], importe: -1.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[286] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[56], importe: 76.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[287] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/24', transaccion_id: trxs[88], importe: -492.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[288] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[289] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[80], importe: -424.95.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[290] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[47], importe: -3136.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[291] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[98], importe: 0.61.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[292] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[168], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[293] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[16], importe: -368.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[294] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[180], importe: -230.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[295] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[153], importe: -525.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[296] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[89], importe: -170.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[297] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[212], importe: -68.04.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[298] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[196], importe: -707.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[299] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[201], importe: -2.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[300] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[26], importe: -210.84.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[301] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[56], importe: 50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[302] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/02', transaccion_id: trxs[187], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[303] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/02', transaccion_id: trxs[184], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[304] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/04', transaccion_id: trxs[135], importe: -371.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[305] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/04', transaccion_id: trxs[107], importe: -140.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[306] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/05', transaccion_id: trxs[62], importe: 296.16.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[307] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[6], importe: 131500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[308] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[99], importe: 2345.38.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[309] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[197], importe: -125.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[310] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[135], importe: -299.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[311] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[89], importe: -180.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[312] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[212], importe: -46.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[313] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[196], importe: -621.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[314] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[113], importe: -105.37.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[315] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[201], importe: -1.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[316] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[56], importe: 147.09.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[317] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/08', transaccion_id: trxs[169], importe: 50000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[318] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/08', transaccion_id: trxs[37], importe: -179000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[319] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/08', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[320] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/11', transaccion_id: trxs[108], importe: -411.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[321] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/11', transaccion_id: trxs[212], importe: -45.69.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[322] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/11', transaccion_id: trxs[196], importe: -115.94.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[323] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/11', transaccion_id: trxs[201], importe: -0.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[324] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/12', transaccion_id: trxs[143], importe: -3906.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[325] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[151], importe: -192.05.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[326] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[327] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[89], importe: -300.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[328] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[329] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/17', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[330] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[217], importe: -990.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[331] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[168], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[332] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[26], importe: -109.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[333] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[196], importe: -42.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[334] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/19', transaccion_id: trxs[201], importe: -0.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[335] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[209], importe: -590.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[336] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[89], importe: -85.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[337] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[19], importe: -1244.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[338] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[201], importe: -38.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[339] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[32], importe: -173.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[340] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[108], importe: -509.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[341] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[198], importe: -132.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[342] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/26', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[343] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/26', transaccion_id: trxs[181], importe: -198.04.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[344] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/26', transaccion_id: trxs[201], importe: -78.01.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[345] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/27', transaccion_id: trxs[201], importe: -82.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[346] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/27', transaccion_id: trxs[32], importe: -113.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[347] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[201], importe: -85.33.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[348] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[201], importe: -100.01.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[349] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[181], importe: -123.22.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[350] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[181], importe: -493.69.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[351] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[181], importe: -116.86.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[352] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/30', transaccion_id: trxs[47], importe: -3135.32.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[353] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/31', transaccion_id: trxs[167], importe: 1000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[354] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/31', transaccion_id: trxs[98], importe: 1.35.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[355] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/01', transaccion_id: trxs[184], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[356] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/01', transaccion_id: trxs[187], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[357] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/01', transaccion_id: trxs[131], importe: -86.26.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[358] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/01', transaccion_id: trxs[201], importe: -20.85.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[359] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/02', transaccion_id: trxs[131], importe: -44.06.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[360] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/02', transaccion_id: trxs[201], importe: -101.75.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[361] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[62], importe: 45.77.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[362] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[152], importe: -166.66.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[363] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[143], importe: -2383.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[364] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[365] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[134], importe: -399.99.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[366] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[196], importe: -157.22.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[367] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[201], importe: -0.75.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[368] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[26], importe: -204.08.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[369] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[56], importe: 15.84.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[370] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/06', transaccion_id: trxs[19], importe: -1146.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[371] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/07', transaccion_id: trxs[160], importe: 19.99.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[372] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/08', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[373] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[6], importe: 179000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[374] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[99], importe: 3060.16.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[375] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[215], importe: -5.36.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[376] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[196], importe: -404.84.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[377] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[201], importe: -1.80.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[378] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[208], importe: -548.90.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[379] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[56], importe: 54.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[380] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[168], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[381] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[135], importe: -772.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[382] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[37], importe: -193000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[383] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[169], importe: 10000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[384] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[209], importe: -114.48.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[385] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[212], importe: -421.01.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[386] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[196], importe: -1760.07.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[387] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[113], importe: -452.26.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[388] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[201], importe: -4.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[389] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[26], importe: -127.44.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[390] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[56], importe: 626.13.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[391] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/17', transaccion_id: trxs[89], importe: -150.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[392] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/21', transaccion_id: trxs[169], importe: 1.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[393] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/21', transaccion_id: trxs[167], importe: 1500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[394] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[176], importe: -974.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[395] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[98], importe: 2.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[396] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[397] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[209], importe: -125.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[398] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[89], importe: -150.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[399] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[108], importe: -429.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[400] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[401] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[47], importe: -3114.94.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[402] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/02', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[403] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[184], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[404] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[187], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[405] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[212], importe: -299.74.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[406] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[196], importe: -52.90.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[407] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[201], importe: -0.90.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[408] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/06', transaccion_id: trxs[212], importe: -60.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[409] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[187], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[410] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[120], importe: -500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[411] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[89], importe: -150.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[412] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[212], importe: -214.68.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[413] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[134], importe: -43.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[414] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/10', transaccion_id: trxs[167], importe: 500.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[415] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[196], importe: -61.85.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[416] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[417] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[196], importe: -81.33.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[418] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[201], importe: -0.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[419] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[169], importe: 15000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[420] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[143], importe: -13757.99.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[421] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/14', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[422] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[6], importe: 193000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[423] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[99], importe: 3093.29.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[424] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[169], importe: 11000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[425] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[37], importe: -207100.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[426] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[212], importe: -54.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[427] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[196], importe: -439.27.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[428] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[201], importe: -1.80.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[429] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[26], importe: -418.55.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[430] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[56], importe: 62.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[431] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/23', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[432] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/25', transaccion_id: trxs[30], importe: -95.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[433] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/25', transaccion_id: trxs[212], importe: -1.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[434] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/26', transaccion_id: trxs[6], importe: 84000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[435] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/26', transaccion_id: trxs[99], importe: 7223.96.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[436] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/27', transaccion_id: trxs[196], importe: -312.43.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[437] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/28', transaccion_id: trxs[169], importe: 3000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[438] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/28', transaccion_id: trxs[37], importe: -92000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[439] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[47], importe: -2635.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[440] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[98], importe: 0.41.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[441] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[442] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[443] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[196], importe: -172.66.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[444] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[113], importe: -131.28.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[445] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[201], importe: -0.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[446] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[26], importe: -223.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[447] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[56], importe: 66.71.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[448] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/03', transaccion_id: trxs[47], importe: -487.65.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[449] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/03', transaccion_id: trxs[184], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[450] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/04', transaccion_id: trxs[187], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[451] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/04', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[452] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/05', transaccion_id: trxs[143], importe: -3199.03.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[453] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/05', transaccion_id: trxs[177], importe: -138.15.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[454] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/10', transaccion_id: trxs[188], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[455] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[6], importe: 207100.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[456] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[99], importe: 3449.78.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[457] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[168], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[458] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[209], importe: -125.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[459] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[460] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[143], importe: -3199.03.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[461] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/18', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[462] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/19', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[463] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/19', transaccion_id: trxs[37], importe: -210600.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[464] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[215], importe: -15.71.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[465] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[196], importe: -366.28.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[466] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[26], importe: -440.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[467] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[81], importe: -89.59.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[468] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[201], importe: -1.96.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[469] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[56], importe: 48.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[470] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/22', transaccion_id: trxs[200], importe: -169.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[471] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/24', transaccion_id: trxs[8], importe: -255.95.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[472] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/25', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[473] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/25', transaccion_id: trxs[128], importe: -76.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[474] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/28', transaccion_id: trxs[98], importe: 1.28.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[475] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/28', transaccion_id: trxs[166], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[476] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[209], importe: -185.74.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[477] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[196], importe: -530.07.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[478] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[158], importe: -216.86.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[479] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[26], importe: -604.88.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[480] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[81], importe: -112.92.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[481] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[201], importe: -1.20.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[482] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[56], importe: 179.18.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[483] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[212], importe: -120.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[484] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[485] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[6], importe: 92000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[486] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[99], importe: 1632.05.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[487] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[47], importe: -3102.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[488] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[185], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[489] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[188], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[490] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[143], importe: -23.85.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[491] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[169], importe: 15000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[492] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[37], importe: -104000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[493] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[136], importe: -153.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[494] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/04', transaccion_id: trxs[212], importe: -320.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[495] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/09', transaccion_id: trxs[188], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[496] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[21], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[497] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[17], importe: -139.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[498] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[182], importe: -55.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[499] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[212], importe: -34.08.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[500] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[196], importe: -257.65.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[501] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[26], importe: -247.29.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[502] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[81], importe: -89.12.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[503] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[201], importe: -0.87.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[504] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[89], importe: -85.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[505] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/15', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[506] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/16', transaccion_id: trxs[4], importe: -450.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[507] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/16', transaccion_id: trxs[34], importe: -281.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[508] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/19', transaccion_id: trxs[6], importe: 210600.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[509] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/19', transaccion_id: trxs[99], importe: 3202.27.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[510] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[44], importe: -1170.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[511] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[81], importe: -50.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[512] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[212], importe: -67.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[513] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[209], importe: -92.24.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[514] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[212], importe: -208.06.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[515] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[196], importe: -903.42.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[516] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[113], importe: -65.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[517] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[26], importe: -530.15.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[518] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[81], importe: -81.13.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[519] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[201], importe: -2.32.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[520] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[194], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[521] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[4], importe: -85.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[522] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[129], importe: -90.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[523] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[136], importe: -93.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[524] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/24', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[525] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[176], importe: -325.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[526] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[98], importe: 7.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[527] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[181], importe: -269.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[528] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[166], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[529] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[47], importe: -3109.05.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[530] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[185], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[531] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[188], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[532] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[209], importe: -88.40.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[533] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[196], importe: -134.42.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[534] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[26], importe: -432.29.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[535] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[81], importe: -133.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[536] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[201], importe: -0.87.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[537] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[56], importe: 22.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[538] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[49], importe: -3290.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[539] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[6], importe: 104000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[540] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[99], importe: 1786.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[541] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[542] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[209], importe: -686.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[543] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[198], importe: -155.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[544] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[212], importe: -210.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[545] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/07', transaccion_id: trxs[143], importe: -2606.11.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[546] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/08', transaccion_id: trxs[196], importe: -9.06.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[547] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/08', transaccion_id: trxs[81], importe: -40.16.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[548] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/08', transaccion_id: trxs[201], importe: -0.29.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[549] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/08', transaccion_id: trxs[188], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[550] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[551] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/12', transaccion_id: trxs[129], importe: -220.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[552] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[78], importe: -120000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[553] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[209], importe: -100.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[554] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[37], importe: -150000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[555] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[169], importe: 20000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[556] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[160], importe: 10.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[557] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[180], importe: -399.98.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[558] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/17', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[559] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/17', transaccion_id: trxs[212], importe: -72.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[560] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/21', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[561] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[126], importe: -25201.72.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[562] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[196], importe: -162.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[563] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[158], importe: -14.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[564] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[26], importe: -372.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[565] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[81], importe: -185.66.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[566] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[201], importe: -0.87.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[567] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/26', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[568] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/27', transaccion_id: trxs[71], importe: -1.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[569] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[71], importe: -3301.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[570] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/29', transaccion_id: trxs[166], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[571] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/30', transaccion_id: trxs[98], importe: 11.07.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[572] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[573] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[128], importe: -332.13.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[574] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[209], importe: -42.65.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[575] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[212], importe: -22.99.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[576] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[196], importe: -111.03.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[577] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[158], importe: -14.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[578] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[201], importe: -0.58.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[579] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[56], importe: 14.33.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[580] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[34], importe: -380.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[581] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[47], importe: -3089.36.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[582] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/03', transaccion_id: trxs[186], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[583] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/03', transaccion_id: trxs[189], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[584] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[126], importe: -299.05.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[585] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[126], importe: -410.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[586] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[587] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[143], importe: -5482.56.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[588] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/05', transaccion_id: trxs[129], importe: -220.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[589] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[126], importe: -159.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)

movs[590] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[153], importe: -277.90.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[591] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[196], importe: -466.26.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[592] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[113], importe: -18.49.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[593] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[26], importe: -150.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[594] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[81], importe: -201.09.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[595] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[201], importe: -2.32.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[596] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[56], importe: 129.62.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[597] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[128], importe: -59.40.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[598] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[599] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/10', transaccion_id: trxs[128], importe: -133.16.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[600] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/10', transaccion_id: trxs[188], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[601] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/11', transaccion_id: trxs[97], importe: -800.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[602] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/11', transaccion_id: trxs[160], importe: 8.91.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[603] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/12', transaccion_id: trxs[126], importe: -612.85.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[604] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/12', transaccion_id: trxs[160], importe: 19.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[605] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[196], importe: -425.33.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[606] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[201], importe: -1.95.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[607] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[176], importe: -240.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[608] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/17', transaccion_id: trxs[6], importe: 150000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[609] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/17', transaccion_id: trxs[99], importe: 2619.86.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[610] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/17', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[611] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/17', transaccion_id: trxs[128], importe: -218.98.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[612] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[209], importe: -560.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[613] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[213], importe: -55.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[614] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[195], importe: -139.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[615] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[616] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[166], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[617] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[37], importe: -130000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[618] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[619] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[212], importe: -21.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[620] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[196], importe: -356.70.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[621] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[113], importe: -38.49.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[622] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[26], importe: -339.55.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[623] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[81], importe: -53.98.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[624] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[201], importe: -1.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[625] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[81], importe: -318.42.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[626] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[126], importe: -1600.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[627] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/26', transaccion_id: trxs[203], importe: -145.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[628] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/27', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[629] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[21], importe: -450.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[630] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[196], importe: -187.76.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[631] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[81], importe: -151.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[632] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[201], importe: -0.50.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[633] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[34], importe: -380.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[634] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/31', transaccion_id: trxs[98], importe: 3.13.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[635] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[143], importe: -4742.09.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[636] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[47], importe: -3082.78.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[637] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[188], importe: -61.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[638] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[185], importe: -109.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[639] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[129], importe: -220.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[640] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[213], importe: -40.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[641] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[212], importe: -25.89.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[642] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[196], importe: -449.80.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[643] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[87], importe: -94.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[644] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[113], importe: -144.97.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[645] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[158], importe: -14.19.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[646] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[26], importe: -365.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[647] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[81], importe: -46.80.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[648] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[201], importe: -1.25.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[649] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[56], importe: 95.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[650] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/07', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[651] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/08', transaccion_id: trxs[188], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[652] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[169], importe: 5000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[653] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[149], importe: -8244.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[654] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[41], importe: -220.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[655] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[196], importe: -279.65.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[656] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[87], importe: -91.67.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[657] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[26], importe: -100.45.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[658] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[201], importe: -0.75.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[659] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[56], importe: 52.08.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[660] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[209], importe: -107.98.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[661] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[196], importe: -126.12.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[662] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[87], importe: -27.18.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[663] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[113], importe: -130.47.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[664] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[201], importe: -0.60.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[665] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/13', transaccion_id: trxs[56], importe: 84.34.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[666] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/14', transaccion_id: trxs[14], importe: -50.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[667] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[196], importe: -169.04.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[668] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[26], importe: -292.64.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[669] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[81], importe: -85.91.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[670] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[201], importe: -0.52.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[671] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[56], importe: 25.40.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[672] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[181], importe: -487.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[673] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[134], importe: -400.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[674] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[34], importe: -404.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[675] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[212], importe: -61.79.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[676] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[196], importe: -366.23.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[677] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[113], importe: -67.18.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[678] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[158], importe: -26.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[679] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[26], importe: -98.41.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[680] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[81], importe: -64.30.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[681] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[201], importe: -1.04.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[682] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[56], importe: 56.43.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[683] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/22', transaccion_id: trxs[6], importe: 130000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[684] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/22', transaccion_id: trxs[99], importe: 2203.77.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[685] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/23', transaccion_id: trxs[160], importe: 20.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[686] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[81], importe: -147.10.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[687] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[196], importe: -33.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[688] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[166], importe: 2000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[689] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/29', transaccion_id: trxs[81], importe: -105.34.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[690] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/30', transaccion_id: trxs[37], importe: -140000.00.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[691] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/31', transaccion_id: trxs[81], importe: -101.14.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[692] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/31', transaccion_id: trxs[98], importe: 4.47.abs, cuenta_id: cuentas[4], empresa: e, usuario: usr)
movs[693] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/02', transaccion_id: trxs[201], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[694] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/03', transaccion_id: trxs[126], importe: -115.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[695] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/03', transaccion_id: trxs[14], importe: -54.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[696] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/04', transaccion_id: trxs[84], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[697] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[39], importe: -490.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[698] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[14], importe: -93.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[699] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[215], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[700] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[84], importe: -88.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[701] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[158], importe: -85.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[702] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[172], importe: -48.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[703] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/06', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[704] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/07', transaccion_id: trxs[121], importe: -400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[705] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/07', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[706] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/07', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[707] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[21], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[708] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/08', transaccion_id: trxs[32], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[709] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/09', transaccion_id: trxs[196], importe: -13.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[710] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/11', transaccion_id: trxs[87], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[711] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/11', transaccion_id: trxs[42], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[712] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/11', transaccion_id: trxs[215], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[713] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[714] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[715] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[145], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[716] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/12', transaccion_id: trxs[10], importe: -2100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[717] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/15', transaccion_id: trxs[100], importe: -470.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[718] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/16', transaccion_id: trxs[110], importe: -2.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[719] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/17', transaccion_id: trxs[85], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[720] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/17', transaccion_id: trxs[196], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[721] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/18', transaccion_id: trxs[215], importe: -86.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[722] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/18', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[723] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/19', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[724] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/19', transaccion_id: trxs[74], importe: -233.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[725] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/19', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[726] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/19', transaccion_id: trxs[179], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[727] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[728] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[87], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[729] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[28], importe: -105.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[730] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[84], importe: -4.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[731] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[138], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[732] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/20', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[733] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/21', transaccion_id: trxs[154], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[734] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/21', transaccion_id: trxs[137], importe: -85.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[735] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/21', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[736] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[158], importe: -140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[737] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[144], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[738] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[32], importe: -240.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[739] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[162], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[740] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/22', transaccion_id: trxs[111], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[741] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[190], importe: 7000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[742] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[51], importe: -7000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[743] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[744] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[58], importe: 105.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[745] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[746] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/24', transaccion_id: trxs[87], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[747] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/25', transaccion_id: trxs[209], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[748] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[158], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[749] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[215], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[750] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[751] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/26', transaccion_id: trxs[172], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[752] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[165], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[753] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[193], importe: -39.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[754] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[32], importe: -95.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[755] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[161], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[756] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/27', transaccion_id: trxs[32], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[757] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/28', transaccion_id: trxs[32], importe: -170.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[758] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[759] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[161], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[760] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[196], importe: -46.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[761] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[215], importe: -28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[762] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/29', transaccion_id: trxs[214], importe: 400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[763] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/30', transaccion_id: trxs[79], importe: -2.25.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[764] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[765] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[155], importe: -450.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[766] = m.id

m = Movimiento.create!(fecha_mov: '2016/10/31', transaccion_id: trxs[181], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[767] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/03', transaccion_id: trxs[156], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[768] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[92], importe: 300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[769] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[158], importe: -86.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[770] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[215], importe: -26.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[771] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[84], importe: -34.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[772] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/04', transaccion_id: trxs[73], importe: -180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[773] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[196], importe: -62.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[774] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[128], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[775] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/05', transaccion_id: trxs[83], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[776] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[92], importe: 1700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[777] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[28], importe: -105.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[778] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[84], importe: -54.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[779] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[134], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[780] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/07', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[781] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[84], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[782] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[154], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[783] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[125], importe: -370.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[784] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[117], importe: -500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[785] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/08', transaccion_id: trxs[120], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[786] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/09', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[787] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/09', transaccion_id: trxs[18], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[788] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/09', transaccion_id: trxs[74], importe: -223.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[789] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/09', transaccion_id: trxs[141], importe: -750.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[790] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/10', transaccion_id: trxs[215], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[791] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/10', transaccion_id: trxs[128], importe: -180.65.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[792] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[158], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[793] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[84], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[794] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[795] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[48], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[796] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[92], importe: 2500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[797] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/11', transaccion_id: trxs[58], importe: 400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[798] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[83], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[799] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/12', transaccion_id: trxs[32], importe: -280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[800] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/14', transaccion_id: trxs[155], importe: -450.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[801] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/15', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[802] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/15', transaccion_id: trxs[158], importe: -66.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[803] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/16', transaccion_id: trxs[158], importe: -11.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[804] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/16', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[805] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/16', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[806] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[95], importe: -114.46.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[807] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[165], importe: -100.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[808] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[172], importe: -62.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[809] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[154], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[810] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/17', transaccion_id: trxs[158], importe: -56.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[811] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[84], importe: -43.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[812] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/18', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[813] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/19', transaccion_id: trxs[215], importe: -66.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[814] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/19', transaccion_id: trxs[89], importe: -190.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[815] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/21', transaccion_id: trxs[84], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[816] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[84], importe: -152.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[817] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/22', transaccion_id: trxs[26], importe: -66.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[818] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/23', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[819] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/23', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[820] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/24', transaccion_id: trxs[158], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[821] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/24', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[822] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/24', transaccion_id: trxs[29], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[823] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/25', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[824] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/25', transaccion_id: trxs[58], importe: 280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[825] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/25', transaccion_id: trxs[127], importe: -380.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[826] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/25', transaccion_id: trxs[215], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[827] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/26', transaccion_id: trxs[32], importe: -350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[828] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/26', transaccion_id: trxs[162], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[829] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/29', transaccion_id: trxs[196], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[830] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[84], importe: -27.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[831] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[215], importe: -23.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[832] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[146], importe: -28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[833] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[834] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[28], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[835] = m.id

m = Movimiento.create!(fecha_mov: '2016/11/30', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[836] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[154], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[837] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[215], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[838] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/01', transaccion_id: trxs[73], importe: -180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[839] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/02', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[840] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/02', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[841] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/02', transaccion_id: trxs[196], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[842] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[843] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[12], importe: -800.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[844] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[89], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[845] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/03', transaccion_id: trxs[212], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[846] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/04', transaccion_id: trxs[9], importe: 347.11.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[847] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[74], importe: -223.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[848] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[65], importe: 70000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[849] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/05', transaccion_id: trxs[51], importe: -70000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[850] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[851] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[215], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[852] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/06', transaccion_id: trxs[39], importe: -215.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[853] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[68], importe: -160.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[854] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[128], importe: -105.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[855] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[92], importe: 2200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[856] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[54], importe: -47.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[857] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[48], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[858] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/07', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[859] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/08', transaccion_id: trxs[196], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[860] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/08', transaccion_id: trxs[158], importe: -28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[861] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/09', transaccion_id: trxs[32], importe: -135.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[862] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[24], importe: -29.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[863] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/10', transaccion_id: trxs[27], importe: -178.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[864] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[84], importe: -1.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[865] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[196], importe: -32.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[866] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/12', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[867] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/13', transaccion_id: trxs[84], importe: -52.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[868] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/13', transaccion_id: trxs[18], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[869] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/14', transaccion_id: trxs[18], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[870] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/14', transaccion_id: trxs[154], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[871] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/14', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[872] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[873] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[874] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[84], importe: -4.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[875] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[87], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[876] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[124], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[877] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[158], importe: -56.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[878] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[118], importe: -1800.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[879] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/15', transaccion_id: trxs[133], importe: -9400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[880] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/16', transaccion_id: trxs[87], importe: -11.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[881] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/16', transaccion_id: trxs[32], importe: -135.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[882] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/17', transaccion_id: trxs[93], importe: -360.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[883] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/17', transaccion_id: trxs[115], importe: -1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[884] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/17', transaccion_id: trxs[14], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[885] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/17', transaccion_id: trxs[32], importe: -310.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[886] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/18', transaccion_id: trxs[118], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[887] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/18', transaccion_id: trxs[60], importe: 2590.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[888] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/18', transaccion_id: trxs[60], importe: 3970.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[889] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/18', transaccion_id: trxs[196], importe: -13.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[890] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/19', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[891] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/19', transaccion_id: trxs[141], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[892] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/20', transaccion_id: trxs[154], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[893] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[215], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[894] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[158], importe: -74.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[895] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/21', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[896] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/22', transaccion_id: trxs[196], importe: -28.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[897] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/22', transaccion_id: trxs[150], importe: -1200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[898] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[899] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[49], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[900] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/23', transaccion_id: trxs[33], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[901] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/24', transaccion_id: trxs[196], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[902] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/24', transaccion_id: trxs[215], importe: -49.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[903] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/24', transaccion_id: trxs[158], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[904] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/24', transaccion_id: trxs[49], importe: -22.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[905] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[10], importe: -2100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[906] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[172], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[907] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[32], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[908] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[75], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[909] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/26', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[910] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/27', transaccion_id: trxs[172], importe: -31.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[911] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[26], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[912] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[84], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[913] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[172], importe: -32.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[914] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[116], importe: -1150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[915] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/28', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[916] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[84], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[917] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[215], importe: -13.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[918] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[158], importe: -58.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[919] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[920] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[123], importe: -350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[921] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/29', transaccion_id: trxs[118], importe: -2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[922] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[58], importe: 180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[923] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[2], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[924] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[215], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[925] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/30', transaccion_id: trxs[196], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[926] = m.id

m = Movimiento.create!(fecha_mov: '2016/12/31', transaccion_id: trxs[196], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[927] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/02', transaccion_id: trxs[136], importe: -900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[928] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/03', transaccion_id: trxs[196], importe: -24.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[929] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/04', transaccion_id: trxs[141], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[930] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/04', transaccion_id: trxs[73], importe: -180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[931] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/04', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[932] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[158], importe: -67.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[933] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[934] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[212], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[935] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/06', transaccion_id: trxs[196], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[936] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/07', transaccion_id: trxs[196], importe: -16.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[937] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/08', transaccion_id: trxs[196], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[938] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/10', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[939] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/10', transaccion_id: trxs[158], importe: -46.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[940] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/10', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[941] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/10', transaccion_id: trxs[209], importe: -32.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[942] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/11', transaccion_id: trxs[196], importe: -545.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[943] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/13', transaccion_id: trxs[215], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[944] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[215], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[945] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/14', transaccion_id: trxs[202], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[946] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/15', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[947] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/16', transaccion_id: trxs[134], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[948] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/16', transaccion_id: trxs[154], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[949] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/16', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[950] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/17', transaccion_id: trxs[196], importe: -26.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[951] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/17', transaccion_id: trxs[212], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[952] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/18', transaccion_id: trxs[158], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[953] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/18', transaccion_id: trxs[215], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[954] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/24', transaccion_id: trxs[51], importe: -13000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[955] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[163], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[956] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[172], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[957] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[36], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[958] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[53], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[959] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[196], importe: -38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[960] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[32], importe: -173.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[961] = m.id

m = Movimiento.create!(fecha_mov: '2017/01/25', transaccion_id: trxs[193], importe: -220.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[962] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/01', transaccion_id: trxs[86], importe: -118.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[963] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[192], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[964] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[25], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[965] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[63], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[966] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[11], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[967] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/03', transaccion_id: trxs[163], importe: -2.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[968] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/04', transaccion_id: trxs[163], importe: -2.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[969] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/04', transaccion_id: trxs[171], importe: -54.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[970] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/07', transaccion_id: trxs[158], importe: -66.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[971] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/07', transaccion_id: trxs[42], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[972] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/07', transaccion_id: trxs[136], importe: -900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[973] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/08', transaccion_id: trxs[134], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[974] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/08', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[975] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/08', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[976] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/09', transaccion_id: trxs[215], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[977] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/09', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[978] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[979] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[158], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[980] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[981] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/10', transaccion_id: trxs[70], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[982] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[983] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[84], importe: -124.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[984] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[985] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/13', transaccion_id: trxs[215], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[986] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[87], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[987] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/14', transaccion_id: trxs[154], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[988] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/15', transaccion_id: trxs[92], importe: 800.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[989] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/16', transaccion_id: trxs[154], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[990] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/16', transaccion_id: trxs[158], importe: -56.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[991] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/16', transaccion_id: trxs[42], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[992] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/17', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[993] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/19', transaccion_id: trxs[196], importe: -24.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[994] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/20', transaccion_id: trxs[74], importe: -445.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[995] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/20', transaccion_id: trxs[183], importe: -75.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[996] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/21', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[997] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/21', transaccion_id: trxs[134], importe: -38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[998] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/22', transaccion_id: trxs[154], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[999] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/22', transaccion_id: trxs[92], importe: 400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1000] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/23', transaccion_id: trxs[94], importe: -140.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1001] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/23', transaccion_id: trxs[42], importe: -159.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1002] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[84], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1003] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[215], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1004] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1005] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[158], importe: -79.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1006] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[58], importe: 155.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1007] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/24', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1008] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/25', transaccion_id: trxs[212], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1009] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/25', transaccion_id: trxs[215], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1010] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/25', transaccion_id: trxs[59], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1011] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[39], importe: -316.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1012] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1013] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/26', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1014] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/28', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1015] = m.id

m = Movimiento.create!(fecha_mov: '2017/02/28', transaccion_id: trxs[55], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1016] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[154], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1017] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[28], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1018] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/01', transaccion_id: trxs[212], importe: -140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1019] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/02', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1020] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/02', transaccion_id: trxs[82], importe: -3.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1021] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/04', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1022] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/04', transaccion_id: trxs[215], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1023] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/07', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1024] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/07', transaccion_id: trxs[215], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1025] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[84], importe: -28.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1026] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[14], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1027] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[10], importe: -1050.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1028] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1029] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[158], importe: -38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1030] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/08', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1031] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1032] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[154], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1033] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[172], importe: -21.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1034] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/09', transaccion_id: trxs[212], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1035] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/10', transaccion_id: trxs[158], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1036] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/10', transaccion_id: trxs[84], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1037] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/10', transaccion_id: trxs[92], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1038] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/11', transaccion_id: trxs[73], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1039] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/11', transaccion_id: trxs[215], importe: -79.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1040] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/11', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1041] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[158], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1042] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/13', transaccion_id: trxs[196], importe: -52.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1043] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[126], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1044] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[42], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1045] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[28], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1046] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[128], importe: -112.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1047] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[32], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1048] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[121], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1049] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1050] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/17', transaccion_id: trxs[172], importe: -106.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1051] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/18', transaccion_id: trxs[215], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1052] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/21', transaccion_id: trxs[84], importe: -13.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1053] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/22', transaccion_id: trxs[154], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1054] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/22', transaccion_id: trxs[120], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1055] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/23', transaccion_id: trxs[28], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1056] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/23', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1057] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/24', transaccion_id: trxs[130], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1058] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/25', transaccion_id: trxs[32], importe: -185.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1059] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/25', transaccion_id: trxs[83], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1060] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/25', transaccion_id: trxs[208], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1061] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/27', transaccion_id: trxs[84], importe: -4.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1062] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/27', transaccion_id: trxs[92], importe: 400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1063] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/27', transaccion_id: trxs[196], importe: -78.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1064] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/27', transaccion_id: trxs[28], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1065] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/29', transaccion_id: trxs[74], importe: -233.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1066] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/29', transaccion_id: trxs[196], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1067] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/29', transaccion_id: trxs[215], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1068] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/29', transaccion_id: trxs[136], importe: -1100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1069] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/29', transaccion_id: trxs[134], importe: -42.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1070] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[215], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1071] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[196], importe: -28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1072] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[28], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1073] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[95], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1074] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/31', transaccion_id: trxs[42], importe: -130.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1075] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[83], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1076] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[215], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1077] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/01', transaccion_id: trxs[158], importe: -29.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1078] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/02', transaccion_id: trxs[209], importe: -324.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1079] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/04', transaccion_id: trxs[172], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1080] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/05', transaccion_id: trxs[10], importe: -1450.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1081] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/05', transaccion_id: trxs[158], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1082] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/05', transaccion_id: trxs[84], importe: -75.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1083] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/06', transaccion_id: trxs[172], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1084] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/06', transaccion_id: trxs[84], importe: -10.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1085] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[156], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1086] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[172], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1087] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[211], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1088] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/08', transaccion_id: trxs[83], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1089] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/08', transaccion_id: trxs[196], importe: -24.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1090] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/10', transaccion_id: trxs[165], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1091] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/10', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1092] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/11', transaccion_id: trxs[84], importe: -21.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1093] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/11', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1094] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[154], importe: -157.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1095] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[32], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1096] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[158], importe: -63.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1097] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[196], importe: -22.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1098] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[106], importe: -350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1099] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1100] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[212], importe: -180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1101] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1102] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[215], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1103] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[153], importe: -25.60.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1104] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[196], importe: -178.37.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1105] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[158], importe: -14.19.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1106] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[81], importe: -69.22.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1107] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[201], importe: -0.58.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1108] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/14', transaccion_id: trxs[56], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1109] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[75], importe: 400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1110] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[73], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1111] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1112] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/17', transaccion_id: trxs[146], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1113] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/18', transaccion_id: trxs[28], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1114] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/18', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1115] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/18', transaccion_id: trxs[32], importe: -160.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1116] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/19', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1117] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/20', transaccion_id: trxs[133], importe: -3500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1118] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/20', transaccion_id: trxs[196], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1119] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/23', transaccion_id: trxs[26], importe: -227.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1120] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/23', transaccion_id: trxs[215], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1121] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/24', transaccion_id: trxs[84], importe: -42.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1122] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/26', transaccion_id: trxs[92], importe: 1050.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1123] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/26', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1124] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/26', transaccion_id: trxs[32], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1125] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/26', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1126] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/28', transaccion_id: trxs[32], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1127] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/28', transaccion_id: trxs[33], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1128] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/28', transaccion_id: trxs[10], importe: -2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1129] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[196], importe: -6.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1130] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/29', transaccion_id: trxs[215], importe: -64.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1131] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/01', transaccion_id: trxs[128], importe: -16.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1132] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[33], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1133] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/02', transaccion_id: trxs[92], importe: 700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1134] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/03', transaccion_id: trxs[165], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1135] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/04', transaccion_id: trxs[48], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1136] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/04', transaccion_id: trxs[81], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1137] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/04', transaccion_id: trxs[215], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1138] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/06', transaccion_id: trxs[26], importe: -447.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1139] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/06', transaccion_id: trxs[215], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1140] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/06', transaccion_id: trxs[196], importe: -27.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1141] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/09', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1142] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/09', transaccion_id: trxs[84], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1143] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/09', transaccion_id: trxs[128], importe: -260.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1144] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/09', transaccion_id: trxs[215], importe: -71.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1145] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/10', transaccion_id: trxs[81], importe: -32.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1146] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/10', transaccion_id: trxs[136], importe: -1100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1147] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/11', transaccion_id: trxs[28], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1148] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/11', transaccion_id: trxs[84], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1149] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/11', transaccion_id: trxs[172], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1150] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/11', transaccion_id: trxs[120], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1151] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[75], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1152] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[32], importe: -310.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1153] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[158], importe: -58.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1154] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[120], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1155] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/12', transaccion_id: trxs[172], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1156] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[196], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1157] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/13', transaccion_id: trxs[215], importe: -66.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1158] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/15', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1159] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/15', transaccion_id: trxs[120], importe: -500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1160] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/16', transaccion_id: trxs[105], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1161] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/16', transaccion_id: trxs[104], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1162] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/17', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1163] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/18', transaccion_id: trxs[39], importe: -42.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1164] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/19', transaccion_id: trxs[158], importe: -56.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1165] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/19', transaccion_id: trxs[120], importe: -580.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1166] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/19', transaccion_id: trxs[215], importe: -56.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1167] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[4], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1168] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[83], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1169] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[215], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1170] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/20', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1171] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/22', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1172] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1173] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[95], importe: -210.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1174] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1175] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[49], importe: -500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1176] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1177] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/23', transaccion_id: trxs[198], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1178] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/24', transaccion_id: trxs[74], importe: -504.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1179] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/25', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1180] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/26', transaccion_id: trxs[73], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1181] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/26', transaccion_id: trxs[215], importe: -111.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1182] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/27', transaccion_id: trxs[49], importe: -2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1183] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/27', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1184] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/27', transaccion_id: trxs[158], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1185] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/27', transaccion_id: trxs[32], importe: -140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1186] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/27', transaccion_id: trxs[102], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1187] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/29', transaccion_id: trxs[84], importe: -26.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1188] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/29', transaccion_id: trxs[196], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1189] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[158], importe: -48.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1190] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1191] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/30', transaccion_id: trxs[58], importe: 140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1192] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[92], importe: 700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1193] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[172], importe: -27.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1194] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1195] = m.id

m = Movimiento.create!(fecha_mov: '2017/05/31', transaccion_id: trxs[120], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1196] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[215], importe: -77.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1197] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1198] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1199] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/01', transaccion_id: trxs[154], importe: -164.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1200] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[48], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1201] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[3], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1202] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/02', transaccion_id: trxs[32], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1203] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/03', transaccion_id: trxs[1], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1204] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/04', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1205] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[196], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1206] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/05', transaccion_id: trxs[215], importe: -11.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1207] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/06', transaccion_id: trxs[84], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1208] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/07', transaccion_id: trxs[158], importe: -78.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1209] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/07', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1210] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/08', transaccion_id: trxs[84], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1211] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[215], importe: -22.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1212] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[196], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1213] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[81], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1214] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[83], importe: -75.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1215] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/10', transaccion_id: trxs[14], importe: -26.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1216] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/12', transaccion_id: trxs[34], importe: -281.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1217] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[158], importe: -112.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1218] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[215], importe: -16.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1219] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[32], importe: -16.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1220] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[196], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1221] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[165], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1222] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[178], importe: 120000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1223] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/13', transaccion_id: trxs[147], importe: -121010.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1224] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/14', transaccion_id: trxs[84], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1225] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/14', transaccion_id: trxs[134], importe: -36.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1226] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/15', transaccion_id: trxs[204], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1227] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/15', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1228] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/15', transaccion_id: trxs[215], importe: -89.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1229] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/15', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1230] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/15', transaccion_id: trxs[92], importe: 1700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1231] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[84], importe: -57.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1232] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/16', transaccion_id: trxs[32], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1233] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/17', transaccion_id: trxs[212], importe: -92.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1234] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/18', transaccion_id: trxs[32], importe: -410.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1235] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/18', transaccion_id: trxs[181], importe: -750.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1236] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/20', transaccion_id: trxs[215], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1237] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/20', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1238] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/21', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1239] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/21', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1240] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/22', transaccion_id: trxs[126], importe: -9150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1241] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/22', transaccion_id: trxs[158], importe: -112.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1242] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/22', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1243] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/22', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1244] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[126], importe: -7700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1245] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1246] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[121], importe: -10000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1247] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1248] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[58], importe: 115.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1249] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[136], importe: -1100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1250] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/23', transaccion_id: trxs[32], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1251] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[196], importe: -98.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1252] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/24', transaccion_id: trxs[215], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1253] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/25', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1254] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/26', transaccion_id: trxs[126], importe: -6650.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1255] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/26', transaccion_id: trxs[134], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1256] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/27', transaccion_id: trxs[84], importe: -9.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1257] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/27', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1258] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[178], importe: 26400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1259] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[52], importe: -1645.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1260] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[23], importe: -24745.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1261] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[126], importe: -1440.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1262] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[212], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1263] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1264] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/28', transaccion_id: trxs[81], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1265] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/29', transaccion_id: trxs[126], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1266] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/29', transaccion_id: trxs[215], importe: -78.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1267] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/30', transaccion_id: trxs[84], importe: -184.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1268] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/30', transaccion_id: trxs[126], importe: -1725.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1269] = m.id

m = Movimiento.create!(fecha_mov: '2017/06/30', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1270] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[83], importe: -4.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1271] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[215], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1272] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/01', transaccion_id: trxs[212], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1273] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/02', transaccion_id: trxs[26], importe: -650.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1274] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[81], importe: -63.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1275] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/04', transaccion_id: trxs[128], importe: -155.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1276] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/05', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1277] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/06', transaccion_id: trxs[158], importe: -114.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1278] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/06', transaccion_id: trxs[196], importe: -23.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1279] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/06', transaccion_id: trxs[126], importe: -800.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1280] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/07', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1281] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/07', transaccion_id: trxs[178], importe: 10000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1282] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/07', transaccion_id: trxs[121], importe: -14900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1283] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/08', transaccion_id: trxs[215], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1284] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/10', transaccion_id: trxs[156], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1285] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/10', transaccion_id: trxs[146], importe: -380.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1286] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/10', transaccion_id: trxs[176], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1287] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/11', transaccion_id: trxs[117], importe: -350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1288] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[32], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1289] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[215], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1290] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[74], importe: -630.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1291] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1292] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/13', transaccion_id: trxs[48], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1293] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/14', transaccion_id: trxs[178], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1294] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/14', transaccion_id: trxs[46], importe: -1680.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1295] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[126], importe: -1600.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1296] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[208], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1297] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[196], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1298] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[197], importe: -130.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1299] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[215], importe: -2.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1300] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/15', transaccion_id: trxs[81], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1301] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/16', transaccion_id: trxs[158], importe: -125.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1302] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1303] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[215], importe: -104.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1304] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[196], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1305] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[213], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1306] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/18', transaccion_id: trxs[106], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1307] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[178], importe: 15000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1308] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[32], importe: -230.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1309] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[148], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1310] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[196], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1311] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/20', transaccion_id: trxs[81], importe: -78.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1312] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1313] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[58], importe: 184.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1314] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/21', transaccion_id: trxs[148], importe: -15000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1315] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/22', transaccion_id: trxs[148], importe: -1400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1316] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/23', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1317] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[126], importe: -2875.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1318] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[210], importe: -600.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1319] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[148], importe: -600.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1320] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1321] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[212], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1322] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/24', transaccion_id: trxs[15], importe: -53.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1323] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/25', transaccion_id: trxs[181], importe: -250.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1324] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/25', transaccion_id: trxs[32], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1325] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/25', transaccion_id: trxs[212], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1326] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/26', transaccion_id: trxs[126], importe: -320.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1327] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/27', transaccion_id: trxs[158], importe: -125.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1328] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/27', transaccion_id: trxs[175], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1329] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/27', transaccion_id: trxs[181], importe: -837.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1330] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/28', transaccion_id: trxs[148], importe: -4100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1331] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/29', transaccion_id: trxs[215], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1332] = m.id

m = Movimiento.create!(fecha_mov: '2017/07/31', transaccion_id: trxs[81], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1333] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[75], importe: 7000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1334] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[84], importe: -33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1335] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[158], importe: -64.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1336] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[196], importe: -347.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1337] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/01', transaccion_id: trxs[170], importe: -972.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1338] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[87], importe: -16.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1339] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1340] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[126], importe: -2430.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1341] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[215], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1342] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[81], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1343] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/02', transaccion_id: trxs[134], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1344] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/03', transaccion_id: trxs[165], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1345] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/03', transaccion_id: trxs[172], importe: -37.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1346] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[73], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1347] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[120], importe: -400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1348] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1349] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[126], importe: -82.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1350] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/04', transaccion_id: trxs[136], importe: -900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1351] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[105], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1352] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[114], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1353] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[212], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1354] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[196], importe: -5.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1355] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/05', transaccion_id: trxs[215], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1356] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/06', transaccion_id: trxs[196], importe: -27.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1357] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/07', transaccion_id: trxs[75], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1358] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/07', transaccion_id: trxs[121], importe: -4200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1359] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/07', transaccion_id: trxs[33], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1360] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/08', transaccion_id: trxs[75], importe: 4500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1361] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/09', transaccion_id: trxs[45], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1362] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/09', transaccion_id: trxs[84], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1363] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/09', transaccion_id: trxs[158], importe: -123.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1364] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/10', transaccion_id: trxs[10], importe: -2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1365] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/10', transaccion_id: trxs[215], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1366] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[21], importe: -770.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1367] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/12', transaccion_id: trxs[215], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1368] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/15', transaccion_id: trxs[84], importe: -1.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1369] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/15', transaccion_id: trxs[134], importe: -46.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1370] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/16', transaccion_id: trxs[126], importe: -500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1371] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/17', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1372] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/17', transaccion_id: trxs[48], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1373] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/17', transaccion_id: trxs[215], importe: -91.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1374] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[215], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1375] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[196], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1376] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[32], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1377] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[181], importe: -299.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1378] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[212], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1379] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/19', transaccion_id: trxs[75], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1380] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/21', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1381] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/22', transaccion_id: trxs[158], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1382] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/23', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1383] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/23', transaccion_id: trxs[58], importe: 55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1384] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/23', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1385] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[215], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1386] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1387] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/24', transaccion_id: trxs[196], importe: -13.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1388] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/25', transaccion_id: trxs[128], importe: -125.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1389] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/25', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1390] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/25', transaccion_id: trxs[59], importe: 2688.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1391] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/26', transaccion_id: trxs[212], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1392] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/26', transaccion_id: trxs[134], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1393] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/29', transaccion_id: trxs[69], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1394] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/29', transaccion_id: trxs[215], importe: -62.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1395] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/30', transaccion_id: trxs[154], importe: -160.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1396] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/30', transaccion_id: trxs[158], importe: -61.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1397] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/30', transaccion_id: trxs[196], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1398] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/31', transaccion_id: trxs[165], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1399] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/31', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1400] = m.id

m = Movimiento.create!(fecha_mov: '2017/08/31', transaccion_id: trxs[81], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1401] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/03', transaccion_id: trxs[17], importe: -250.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1402] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/05', transaccion_id: trxs[196], importe: -47.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1403] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/05', transaccion_id: trxs[215], importe: -81.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1404] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/05', transaccion_id: trxs[172], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1405] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/05', transaccion_id: trxs[173], importe: -320.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1406] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/06', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1407] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/06', transaccion_id: trxs[120], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1408] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/06', transaccion_id: trxs[136], importe: -900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1409] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/07', transaccion_id: trxs[128], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1410] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/07', transaccion_id: trxs[126], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1411] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/07', transaccion_id: trxs[48], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1412] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/08', transaccion_id: trxs[121], importe: -3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1413] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/08', transaccion_id: trxs[28], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1414] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/09', transaccion_id: trxs[215], importe: -22.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1415] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/11', transaccion_id: trxs[92], importe: 2750.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1416] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/11', transaccion_id: trxs[126], importe: 0.01.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1417] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/11', transaccion_id: trxs[83], importe: -53.60.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1418] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/12', transaccion_id: trxs[84], importe: -6.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1419] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/12', transaccion_id: trxs[28], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1420] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/12', transaccion_id: trxs[172], importe: -58.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1421] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/13', transaccion_id: trxs[84], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1422] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/13', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1423] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/14', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1424] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/14', transaccion_id: trxs[121], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1425] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/15', transaccion_id: trxs[126], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1426] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/15', transaccion_id: trxs[13], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1427] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/15', transaccion_id: trxs[215], importe: -22.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1428] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/15', transaccion_id: trxs[113], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1429] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/16', transaccion_id: trxs[121], importe: -10000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1430] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/18', transaccion_id: trxs[134], importe: -43.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1431] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/18', transaccion_id: trxs[196], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)

movs[1432] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/18', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1433] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/19', transaccion_id: trxs[126], importe: -680.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1434] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/20', transaccion_id: trxs[126], importe: -640.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1435] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/20', transaccion_id: trxs[196], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1436] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/20', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1437] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/20', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1438] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/21', transaccion_id: trxs[66], importe: -243.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1439] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/21', transaccion_id: trxs[126], importe: -1150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1440] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/21', transaccion_id: trxs[158], importe: -132.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1441] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/21', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1442] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/21', transaccion_id: trxs[92], importe: 243.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1443] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/22', transaccion_id: trxs[83], importe: -88.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1444] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/23', transaccion_id: trxs[126], importe: -190.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1445] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/23', transaccion_id: trxs[212], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1446] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/23', transaccion_id: trxs[215], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1447] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/23', transaccion_id: trxs[121], importe: -5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1448] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/25', transaccion_id: trxs[172], importe: -38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1449] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/25', transaccion_id: trxs[92], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1450] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/26', transaccion_id: trxs[84], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1451] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/26', transaccion_id: trxs[87], importe: -4.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1452] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/27', transaccion_id: trxs[165], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1453] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/27', transaccion_id: trxs[158], importe: -130.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1454] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/28', transaccion_id: trxs[74], importe: -288.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1455] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/29', transaccion_id: trxs[196], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1456] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/30', transaccion_id: trxs[121], importe: -12000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1457] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/30', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1458] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/30', transaccion_id: trxs[128], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1459] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/30', transaccion_id: trxs[114], importe: -80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1460] = m.id

m = Movimiento.create!(fecha_mov: '2017/09/30', transaccion_id: trxs[32], importe: -405.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1461] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/01', transaccion_id: trxs[215], importe: -53.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1462] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/01', transaccion_id: trxs[196], importe: -7.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1463] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/02', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1464] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/02', transaccion_id: trxs[126], importe: -1660.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1465] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/02', transaccion_id: trxs[196], importe: -63.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1466] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/03', transaccion_id: trxs[126], importe: -500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1467] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/03', transaccion_id: trxs[148], importe: -7500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1468] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/03', transaccion_id: trxs[92], importe: 4000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1469] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/03', transaccion_id: trxs[10], importe: -2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1470] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/03', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1471] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/04', transaccion_id: trxs[84], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1472] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/04', transaccion_id: trxs[48], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1473] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/05', transaccion_id: trxs[158], importe: -110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1474] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/05', transaccion_id: trxs[215], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1475] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/06', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1476] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/06', transaccion_id: trxs[73], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1477] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/06', transaccion_id: trxs[134], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1478] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/06', transaccion_id: trxs[32], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1479] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/07', transaccion_id: trxs[121], importe: -4000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1480] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/07', transaccion_id: trxs[121], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1481] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/07', transaccion_id: trxs[202], importe: -350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1482] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/08', transaccion_id: trxs[205], importe: 26300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1483] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/10', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1484] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/10', transaccion_id: trxs[147], importe: -29464.70.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1485] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/11', transaccion_id: trxs[158], importe: -121.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1486] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/11', transaccion_id: trxs[215], importe: -75.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1487] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/11', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1488] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/11', transaccion_id: trxs[212], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1489] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/12', transaccion_id: trxs[195], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1490] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/12', transaccion_id: trxs[32], importe: -450.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1491] = m.id

m = Movimiento.create!(fecha_mov: '2010/10/12', transaccion_id: trxs[58], importe: 240.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1492] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/13', transaccion_id: trxs[195], importe: -380.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1493] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/13', transaccion_id: trxs[128], importe: -280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1494] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/13', transaccion_id: trxs[84], importe: -3.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1495] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/13', transaccion_id: trxs[81], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1496] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/14', transaccion_id: trxs[215], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1497] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/14', transaccion_id: trxs[197], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1498] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/18', transaccion_id: trxs[121], importe: -280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1499] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/18', transaccion_id: trxs[158], importe: -130.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1500] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/18', transaccion_id: trxs[136], importe: -900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1501] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/19', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1502] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/20', transaccion_id: trxs[126], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1503] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/20', transaccion_id: trxs[121], importe: -4000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1504] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/20', transaccion_id: trxs[32], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1505] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/21', transaccion_id: trxs[146], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1506] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/21', transaccion_id: trxs[128], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1507] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/21', transaccion_id: trxs[213], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1508] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/23', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1509] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/24', transaccion_id: trxs[32], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1510] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/25', transaccion_id: trxs[14], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1511] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/25', transaccion_id: trxs[128], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1512] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/26', transaccion_id: trxs[92], importe: 2500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1513] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/26', transaccion_id: trxs[165], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1514] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/28', transaccion_id: trxs[215], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1515] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/28', transaccion_id: trxs[196], importe: -28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1516] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1517] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1518] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[148], importe: -3300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1519] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[158], importe: -118.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1520] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[215], importe: -72.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1521] = m.id

m = Movimiento.create!(fecha_mov: '2017/10/31', transaccion_id: trxs[84], importe: -48.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1522] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/01', transaccion_id: trxs[26], importe: -706.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1523] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/01', transaccion_id: trxs[39], importe: -633.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1524] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/01', transaccion_id: trxs[81], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1525] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/01', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1526] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/03', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1527] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/03', transaccion_id: trxs[32], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1528] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/04', transaccion_id: trxs[215], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1529] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/06', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1530] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/06', transaccion_id: trxs[84], importe: -56.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1531] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/06', transaccion_id: trxs[215], importe: -70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1532] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/07', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1533] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/07', transaccion_id: trxs[156], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1534] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/07', transaccion_id: trxs[215], importe: -21.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1535] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/08', transaccion_id: trxs[148], importe: -7500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1536] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/08', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1537] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/08', transaccion_id: trxs[126], importe: -40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1538] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/08', transaccion_id: trxs[81], importe: -58.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1539] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/09', transaccion_id: trxs[156], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1540] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/09', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1541] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/10', transaccion_id: trxs[84], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1542] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/10', transaccion_id: trxs[92], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1543] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/10', transaccion_id: trxs[32], importe: -140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1544] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/11', transaccion_id: trxs[215], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1545] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/11', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1546] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/11', transaccion_id: trxs[105], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1547] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/11', transaccion_id: trxs[121], importe: -5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1548] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/14', transaccion_id: trxs[148], importe: -3200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1549] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/17', transaccion_id: trxs[196], importe: -170.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1550] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/17', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1551] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/17', transaccion_id: trxs[121], importe: -5500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1552] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/18', transaccion_id: trxs[32], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1553] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/20', transaccion_id: trxs[122], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1554] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/20', transaccion_id: trxs[121], importe: -550.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1555] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/20', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1556] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/21', transaccion_id: trxs[121], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1557] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/21', transaccion_id: trxs[196], importe: -68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1558] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/21', transaccion_id: trxs[156], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1559] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/22', transaccion_id: trxs[84], importe: -13.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1560] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/22', transaccion_id: trxs[87], importe: -11.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1561] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/22', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1562] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/22', transaccion_id: trxs[28], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1563] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/24', transaccion_id: trxs[196], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1564] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/24', transaccion_id: trxs[156], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1565] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/25', transaccion_id: trxs[196], importe: -45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1566] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/25', transaccion_id: trxs[215], importe: -90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1567] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/26', transaccion_id: trxs[59], importe: 6040.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1568] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/27', transaccion_id: trxs[84], importe: -145.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1569] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/28', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1570] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/28', transaccion_id: trxs[92], importe: 4000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1571] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/28', transaccion_id: trxs[58], importe: 340.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1572] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/28', transaccion_id: trxs[14], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1573] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/29', transaccion_id: trxs[84], importe: -54.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1574] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/29', transaccion_id: trxs[196], importe: -187.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1575] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/30', transaccion_id: trxs[109], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1576] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/30', transaccion_id: trxs[196], importe: -8.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1577] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/30', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1578] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/30', transaccion_id: trxs[64], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1579] = m.id

m = Movimiento.create!(fecha_mov: '2017/11/30', transaccion_id: trxs[10], importe: -2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1580] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/01', transaccion_id: trxs[196], importe: -15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1581] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/02', transaccion_id: trxs[81], importe: -100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1582] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/05', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1583] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/06', transaccion_id: trxs[48], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1584] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/06', transaccion_id: trxs[84], importe: -54.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1585] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/06', transaccion_id: trxs[196], importe: -1.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1586] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/07', transaccion_id: trxs[196], importe: -76.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1587] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/07', transaccion_id: trxs[109], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1588] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/09', transaccion_id: trxs[119], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1589] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/10', transaccion_id: trxs[196], importe: -25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1590] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/11', transaccion_id: trxs[202], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1591] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/11', transaccion_id: trxs[120], importe: -30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1592] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/11', transaccion_id: trxs[57], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1593] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/12', transaccion_id: trxs[38], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1594] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/12', transaccion_id: trxs[92], importe: 1700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1595] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/12', transaccion_id: trxs[148], importe: -7500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1596] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/12', transaccion_id: trxs[196], importe: -12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1597] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/13', transaccion_id: trxs[84], importe: -57.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1598] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/16', transaccion_id: trxs[119], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1599] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/17', transaccion_id: trxs[158], importe: -115.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1600] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/17', transaccion_id: trxs[215], importe: -55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1601] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/17', transaccion_id: trxs[181], importe: -400.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1602] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/18', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1603] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/18', transaccion_id: trxs[81], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1604] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/18', transaccion_id: trxs[109], importe: -187.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1605] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/20', transaccion_id: trxs[26], importe: -230.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1606] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/21', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1607] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/21', transaccion_id: trxs[58], importe: 91.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1608] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/21', transaccion_id: trxs[27], importe: -617.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1609] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/22', transaccion_id: trxs[33], importe: -65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1610] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/22', transaccion_id: trxs[92], importe: 1500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1611] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/22', transaccion_id: trxs[103], importe: -175.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1612] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/22', transaccion_id: trxs[33], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1613] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/23', transaccion_id: trxs[195], importe: -339.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1614] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/23', transaccion_id: trxs[196], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1615] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/24', transaccion_id: trxs[105], importe: -170.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1616] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/26', transaccion_id: trxs[74], importe: -855.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1617] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/27', transaccion_id: trxs[10], importe: -2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1618] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/27', transaccion_id: trxs[84], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1619] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/29', transaccion_id: trxs[92], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1620] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/29', transaccion_id: trxs[210], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1621] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/29', transaccion_id: trxs[28], importe: -120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1622] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/29', transaccion_id: trxs[84], importe: -192.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1623] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/30', transaccion_id: trxs[196], importe: -125.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1624] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/30', transaccion_id: trxs[215], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1625] = m.id

m = Movimiento.create!(fecha_mov: '2017/12/31', transaccion_id: trxs[48], importe: -300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1626] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/06', transaccion_id: trxs[183], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1627] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/06', transaccion_id: trxs[196], importe: -72.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1628] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/06', transaccion_id: trxs[153], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1629] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/08', transaccion_id: trxs[136], importe: -1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1630] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/09', transaccion_id: trxs[86], importe: -134.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1631] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/09', transaccion_id: trxs[195], importe: -85.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1632] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/09', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1633] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/09', transaccion_id: trxs[58], importe: 365.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1634] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/09', transaccion_id: trxs[87], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1635] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/10', transaccion_id: trxs[95], importe: -447.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1636] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/10', transaccion_id: trxs[45], importe: -3651.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1637] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/11', transaccion_id: trxs[81], importe: -60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1638] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/11', transaccion_id: trxs[202], importe: -35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1639] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/13', transaccion_id: trxs[196], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1640] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/13', transaccion_id: trxs[183], importe: -50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1641] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/16', transaccion_id: trxs[183], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1642] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/16', transaccion_id: trxs[196], importe: -42.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1643] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/17', transaccion_id: trxs[138], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1644] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/18', transaccion_id: trxs[197], importe: -200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1645] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/18', transaccion_id: trxs[22], importe: -280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1646] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/19', transaccion_id: trxs[138], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1647] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/20', transaccion_id: trxs[183], importe: -20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1648] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/20', transaccion_id: trxs[18], importe: -1296.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1649] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/23', transaccion_id: trxs[207], importe: -95.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1650] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/24', transaccion_id: trxs[48], importe: -10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1651] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/24', transaccion_id: trxs[207], importe: -157.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1652] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/24', transaccion_id: trxs[32], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1653] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/24', transaccion_id: trxs[161], importe: -150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1654] = m.id

m = Movimiento.create!(fecha_mov: '2018/01/24', transaccion_id: trxs[14], importe: -18.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1655] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[77], importe: -460.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1656] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/15', transaccion_id: trxs[164], importe: -50.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1657] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/16', transaccion_id: trxs[71], importe: -11000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1658] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/28', transaccion_id: trxs[71], importe: -3000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1659] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[5], importe: 24630.78.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1660] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[66], importe: -71.51.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1661] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[8], importe: -133.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1662] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[86], importe: -115.29.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1663] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[71], importe: -5000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1664] = m.id

m = Movimiento.create!(fecha_mov: '2017/03/30', transaccion_id: trxs[96], importe: -1150.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1665] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/04', transaccion_id: trxs[196], importe: -95.50.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1666] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[209], importe: -108.80.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1667] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[212], importe: -69.58.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1668] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[196], importe: -1474.49.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1669] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[113], importe: -165.62.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1670] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[26], importe: -85.44.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1671] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[201], importe: -2.90.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1672] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/07', transaccion_id: trxs[56], importe: 156.10.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1673] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/12', transaccion_id: trxs[164], importe: -140.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1674] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[206], importe: -39.76.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1675] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[199], importe: -279.98.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1676] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[212], importe: -107.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1677] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/13', transaccion_id: trxs[195], importe: -460.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1678] = m.id

m = Movimiento.create!(fecha_mov: '2017/04/15', transaccion_id: trxs[71], importe: -2000.00.abs, cuenta_id: cuentas[3], empresa: e, usuario: usr)
movs[1679] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/07', transaccion_id: trxs[161], importe: 180.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1680] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/07', transaccion_id: trxs[36], importe: 80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1681] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/07', transaccion_id: trxs[14], importe: 30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1682] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/09', transaccion_id: trxs[196], importe: 110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1683] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/09', transaccion_id: trxs[215], importe: 40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1684] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/09', transaccion_id: trxs[81], importe: 60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1685] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/12', transaccion_id: trxs[183], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1686] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/14', transaccion_id: trxs[183], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1687] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/15', transaccion_id: trxs[84], importe: 57.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1688] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/15', transaccion_id: trxs[87], importe: 12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1689] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/15', transaccion_id: trxs[45], importe: 3755.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1690] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/15', transaccion_id: trxs[92], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1691] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/19', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1692] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/20', transaccion_id: trxs[154], importe: 115.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1693] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/20', transaccion_id: trxs[196], importe: 33.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1694] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/21', transaccion_id: trxs[136], importe: 1200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1695] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/22', transaccion_id: trxs[10], importe: 2900.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1696] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/22', transaccion_id: trxs[74], importe: 615.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1697] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/22', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1698] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/23', transaccion_id: trxs[220], importe: 45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1699] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/23', transaccion_id: trxs[215], importe: 40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1700] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/23', transaccion_id: trxs[84], importe: 2.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1701] = m.id

m = Movimiento.create!(fecha_mov: '2018/02/28', transaccion_id: trxs[32], importe: 310.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1702] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/02', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1703] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/02', transaccion_id: trxs[154], importe: 205.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1704] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/03', transaccion_id: trxs[119], importe: 350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1705] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/07', transaccion_id: trxs[84], importe: 135.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1706] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/05', transaccion_id: trxs[161], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1707] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/09', transaccion_id: trxs[220], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1708] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/09', transaccion_id: trxs[92], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1709] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/09', transaccion_id: trxs[215], importe: 51.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1710] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/09', transaccion_id: trxs[84], importe: 35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1711] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/10', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1712] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/11', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1713] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/11', transaccion_id: trxs[65], importe: 3700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1714] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/12', transaccion_id: trxs[218], importe: 60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1715] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/12', transaccion_id: trxs[81], importe: 28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1716] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/13', transaccion_id: trxs[156], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1717] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/13', transaccion_id: trxs[84], importe: 35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1718] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/14', transaccion_id: trxs[158], importe: 58.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1719] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/14', transaccion_id: trxs[215], importe: 72.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1720] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/15', transaccion_id: trxs[10], importe: 1750.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1721] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/15', transaccion_id: trxs[153], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1722] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/16', transaccion_id: trxs[84], importe: 32.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1723] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/17', transaccion_id: trxs[232], importe: 450.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1724] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/18', transaccion_id: trxs[65], importe: 3700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1725] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/19', transaccion_id: trxs[154], importe: 589.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1726] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/19', transaccion_id: trxs[84], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1727] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/21', transaccion_id: trxs[222], importe: 68.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1728] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/22', transaccion_id: trxs[158], importe: 60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1729] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/22', transaccion_id: trxs[215], importe: 75.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1730] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/22', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1731] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/22', transaccion_id: trxs[225], importe: 40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1732] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/23', transaccion_id: trxs[92], importe: 2500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1733] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/24', transaccion_id: trxs[218], importe: 20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1734] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/24', transaccion_id: trxs[215], importe: 14.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1735] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/25', transaccion_id: trxs[87], importe: 160.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1736] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/25', transaccion_id: trxs[232], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1737] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/25', transaccion_id: trxs[232], importe: 300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1738] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/25', transaccion_id: trxs[73], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1739] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/26', transaccion_id: trxs[128], importe: 25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1740] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/27', transaccion_id: trxs[74], importe: 315.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1741] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/28', transaccion_id: trxs[158], importe: 120.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1742] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/28', transaccion_id: trxs[215], importe: 40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1743] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/29', transaccion_id: trxs[223], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1744] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/29', transaccion_id: trxs[201], importe: 85.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1745] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/30', transaccion_id: trxs[201], importe: 210.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1746] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/30', transaccion_id: trxs[152], importe: 55.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1747] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/31', transaccion_id: trxs[218], importe: 20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1748] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/31', transaccion_id: trxs[220], importe: 28.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1749] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/31', transaccion_id: trxs[196], importe: 315.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1750] = m.id

m = Movimiento.create!(fecha_mov: '2018/03/31', transaccion_id: trxs[196], importe: 70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1751] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/01', transaccion_id: trxs[183], importe: 220.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1752] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/01', transaccion_id: trxs[218], importe: 30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1753] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/01', transaccion_id: trxs[32], importe: 80.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1754] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/01', transaccion_id: trxs[89], importe: 70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1755] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/02', transaccion_id: trxs[224], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1756] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/02', transaccion_id: trxs[32], importe: 150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1757] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/02', transaccion_id: trxs[223], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1758] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/04', transaccion_id: trxs[84], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1759] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/04', transaccion_id: trxs[28], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1760] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/04', transaccion_id: trxs[205], importe: 40.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1761] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/04', transaccion_id: trxs[136], importe: 1200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1762] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/05', transaccion_id: trxs[59], importe: 3700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1763] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/06', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1764] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/06', transaccion_id: trxs[138], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1765] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/07', transaccion_id: trxs[119], importe: 350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1766] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/09', transaccion_id: trxs[87], importe: 12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1767] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/10', transaccion_id: trxs[158], importe: 140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1768] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/10', transaccion_id: trxs[215], importe: 125.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1769] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/11', transaccion_id: trxs[153], importe: 25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1770] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/11', transaccion_id: trxs[102], importe: 20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1771] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/11', transaccion_id: trxs[200], importe: 454.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1772] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/12', transaccion_id: trxs[101], importe: 260.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1773] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/12', transaccion_id: trxs[218], importe: 37.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1774] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/12', transaccion_id: trxs[120], importe: 30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1775] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/13', transaccion_id: trxs[4], importe: 25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1776] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/13', transaccion_id: trxs[153], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1777] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/13', transaccion_id: trxs[190], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1778] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/14', transaccion_id: trxs[215], importe: 223.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1779] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/14', transaccion_id: trxs[34], importe: 1490.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1780] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/14', transaccion_id: trxs[225], importe: 34.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1781] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/17', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1782] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/17', transaccion_id: trxs[138], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1783] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/19', transaccion_id: trxs[92], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1784] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/19', transaccion_id: trxs[84], importe: 12.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1785] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/20', transaccion_id: trxs[190], importe: 8000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1786] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/21', transaccion_id: trxs[153], importe: 70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1787] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/21', transaccion_id: trxs[119], importe: 350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1788] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/21', transaccion_id: trxs[232], importe: 700.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1789] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/21', transaccion_id: trxs[226], importe: 770.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1790] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/21', transaccion_id: trxs[218], importe: 38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1791] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/22', transaccion_id: trxs[232], importe: 800.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1792] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/23', transaccion_id: trxs[141], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1793] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/25', transaccion_id: trxs[205], importe: 60.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1794] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/26', transaccion_id: trxs[218], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1795] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/26', transaccion_id: trxs[190], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1796] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/27', transaccion_id: trxs[223], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1797] = m.id

m = Movimiento.create!(fecha_mov: '2018/04/30', transaccion_id: trxs[130], importe: 300.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1798] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/01', transaccion_id: trxs[220], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1799] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/01', transaccion_id: trxs[223], importe: 50.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1800] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/01', transaccion_id: trxs[218], importe: 45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1801] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/02', transaccion_id: trxs[232], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1802] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/02', transaccion_id: trxs[120], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1803] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/02', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1804] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/02', transaccion_id: trxs[215], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1805] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/03', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1806] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/03', transaccion_id: trxs[154], importe: 70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1807] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/03', transaccion_id: trxs[158], importe: 130.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1808] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/03', transaccion_id: trxs[232], importe: 240.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1809] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/05', transaccion_id: trxs[26], importe: 750.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1810] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/05', transaccion_id: trxs[81], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1811] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/05', transaccion_id: trxs[215], importe: 177.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1812] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/07', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1813] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/08', transaccion_id: trxs[218], importe: 20.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1814] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/08', transaccion_id: trxs[196], importe: 65.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1815] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/09', transaccion_id: trxs[218], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1816] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/10', transaccion_id: trxs[92], importe: 2000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1817] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/10', transaccion_id: trxs[84], importe: 21.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1818] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/10', transaccion_id: trxs[152], importe: 684.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1819] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/11', transaccion_id: trxs[190], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1820] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/12', transaccion_id: trxs[119], importe: 350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1821] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/12', transaccion_id: trxs[215], importe: 77.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1822] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/13', transaccion_id: trxs[215], importe: 280.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1823] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/12', transaccion_id: trxs[105], importe: 100.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1824] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/14', transaccion_id: trxs[87], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1825] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/14', transaccion_id: trxs[136], importe: 1200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1826] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/16', transaccion_id: trxs[84], importe: 30.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1827] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/16', transaccion_id: trxs[218], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1828] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/17', transaccion_id: trxs[92], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1829] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/18', transaccion_id: trxs[190], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1830] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/19', transaccion_id: trxs[229], importe: 150.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1831] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/19', transaccion_id: trxs[215], importe: 97.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1832] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/19', transaccion_id: trxs[218], importe: 38.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1833] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/20', transaccion_id: trxs[228], importe: 500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1834] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/21', transaccion_id: trxs[229], importe: 200.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1835] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/21', transaccion_id: trxs[231], importe: 770.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1836] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[196], importe: 90.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1837] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[231], importe: 47.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1838] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[4], importe: 85.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1839] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[153], importe: 70.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1840] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[183], importe: 160.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1841] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[81], importe: 35.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1842] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[10], importe: 3500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1843] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/22', transaccion_id: trxs[74], importe: 630.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1844] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/24', transaccion_id: trxs[92], importe: 3500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1845] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/24', transaccion_id: trxs[218], importe: 10.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1846] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/24', transaccion_id: trxs[190], importe: 5000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1847] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/25', transaccion_id: trxs[199], importe: 420.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1848] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/25', transaccion_id: trxs[215], importe: 15.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1849] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/25', transaccion_id: trxs[232], importe: 470.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1850] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/26', transaccion_id: trxs[4], importe: 110.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1851] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/26', transaccion_id: trxs[233], importe: 6500.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1852] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/26', transaccion_id: trxs[199], importe: 140.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1853] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/26', transaccion_id: trxs[196], importe: 45.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1854] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/26', transaccion_id: trxs[215], importe: 62.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1855] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/28', transaccion_id: trxs[231], importe: 2.50.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1856] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/29', transaccion_id: trxs[92], importe: 1000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1857] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/29', transaccion_id: trxs[81], importe: 25.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1858] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/29', transaccion_id: trxs[119], importe: 350.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1859] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/30', transaccion_id: trxs[218], importe: 22.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1860] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/31', transaccion_id: trxs[141], importe: 3000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1861] = m.id

m = Movimiento.create!(fecha_mov: '2018/05/31', transaccion_id: trxs[92], importe: 4000.00.abs, cuenta_id: cuentas[2], empresa: e, usuario: usr)
movs[1862] = m.id

puts "Movimientos: \n#{movs} \n\n"

