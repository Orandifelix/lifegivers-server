class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :gender
      t.integer :age
      t.float :weight
      t.string :profile_picture
      t.text :medical_history
      t.string :address
      t.string :email
      t.string :contact_number

      t.timestamps
    end
    add_index :users, :username
  end
end
