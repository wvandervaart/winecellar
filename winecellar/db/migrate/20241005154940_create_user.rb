class CreateUser < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :email, null: false
      t.string :firstname
      t.string :lastname
      t.string :suffix
      t.string :password_digest
      t.integer :level
    end
    add_index :users, :email, unique: true
  end
end