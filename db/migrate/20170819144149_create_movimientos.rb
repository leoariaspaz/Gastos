class CreateMovimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :movimientos do |t|
      t.date :fecha_mov, default: Date.today
      t.references :transaccion, foreign_key: true
      t.decimal :importe, precision: 18, scale: 2, default: 0

      t.timestamps
    end
  end
end
