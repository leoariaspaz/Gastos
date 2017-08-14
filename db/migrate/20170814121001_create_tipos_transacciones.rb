class CreateTiposTransacciones < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_transacciones do |t|
      t.string :descripcion
      t.boolean :habilitado

      t.timestamps
    end

    add_index :tipos_transacciones, :descripcion, unique: true
  end
end
