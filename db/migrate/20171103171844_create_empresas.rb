class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :razon_social, limit: 255
      t.string :nombre_fantasia, limit: 255

      t.timestamps
    end
  end
end
