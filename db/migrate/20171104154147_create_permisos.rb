class CreatePermisos < ActiveRecord::Migration[5.0]
  def change
    create_table :permisos do |t|
      t.string :nombre
      t.string :controller
      t.string :action

      t.timestamps
    end
  end
end
