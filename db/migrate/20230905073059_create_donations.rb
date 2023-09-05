class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.references :donation_type, null: false, foreign_key: true
      t.date :donation_date
      t.time :donation_time
      t.string :donation_status
      t.string :donation_transaction_number

      t.timestamps
    end
  end
end
