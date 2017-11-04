class CreateJoinTableRolPermiso < ActiveRecord::Migration[5.0]
  def change
    create_join_table :roles, :permisos do |t|
      # t.index [:rol_id, :permiso_id]
      t.index [:permiso_id, :rol_id]
    end
  end
end
