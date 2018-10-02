class AddEsContrasientoToMovimiento < ActiveRecord::Migration[5.0]
  def change
    add_column :movimientos, :es_contrasiento, :boolean
  end
end
