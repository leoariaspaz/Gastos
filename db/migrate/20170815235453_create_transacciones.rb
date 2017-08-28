class CreateTransacciones < ActiveRecord::Migration[5.0]
  def change
    create_table :transacciones do |t|
      t.string :descripcion, limit: 255
      t.boolean :habilitado
      t.boolean :es_debito
      t.references :tipo_transaccion, foreign_key: true

      t.timestamps
    end

    add_index :transacciones, [:descripcion, :tipo_transaccion_id], unique: true
  end
end
