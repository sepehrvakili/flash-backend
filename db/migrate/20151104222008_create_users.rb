class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :auth_token

      t.timestamps null: false
    end
    add_index :users, :username
    add_index :users, :email
  end
end
