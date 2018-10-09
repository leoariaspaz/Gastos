class AddUsuarioRefToMovimiento < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimientos, :usuario, foreign_key: true
  end
end
