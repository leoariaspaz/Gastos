class CreateCuentas < ActiveRecord::Migration[5.0]
  def change
    create_table :cuentas do |t|
      t.string :descripcion, limit: 50
      t.decimal :saldo_inicial, precision: 18, scale: 2, default: 0

      t.timestamps
    end
  end
end
