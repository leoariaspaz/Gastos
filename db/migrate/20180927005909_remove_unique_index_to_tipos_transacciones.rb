class RemoveUniqueIndexToTiposTransacciones < ActiveRecord::Migration[5.0]
  def change
  	remove_index :tipos_transacciones, column: :descripcion
  	add_index :tipos_transacciones, [:descripcion, :empresa_id], unique: true
  end
end
