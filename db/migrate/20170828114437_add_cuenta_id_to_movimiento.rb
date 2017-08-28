class AddCuentaIdToMovimiento < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimientos, :cuenta, foreign_key: true
  end
end
