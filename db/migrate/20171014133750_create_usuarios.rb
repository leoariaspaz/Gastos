class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre, limit: 50
      t.string :email, limit: 50
      t.string :password_hash
      t.string :password_salt
      t.integer :estado

      t.timestamps
    end
  end
end
