class CreateDonors < ActiveRecord::Migration[7.0]
  def change
    create_table :donors do |t|
      t.string :blood_type
      t.boolean :has_donated_before
      t.integer :age

      t.timestamps
    end
  end
end
