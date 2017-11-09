class AddEmpresaRefTranMovCtas < ActiveRecord::Migration[5.0]
  def change
    add_reference :tipos_transacciones, :empresa, foreign_key: true
    add_reference :transacciones, :empresa, foreign_key: true
    add_reference :movimientos, :empresa, foreign_key: true
    add_reference :cuentas, :empresa, foreign_key: true
  end
end
