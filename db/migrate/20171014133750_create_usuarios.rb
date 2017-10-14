class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
