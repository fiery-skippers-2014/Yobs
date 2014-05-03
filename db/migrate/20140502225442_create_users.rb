class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
<<<<<<< HEAD
      t.string :phone
      t.string :role
=======
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
      t.string :password_digest
      t.timestamps
    end
  end
end