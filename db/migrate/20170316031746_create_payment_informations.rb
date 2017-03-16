class CreatePaymentInformations < ActiveRecord::Migration
  def change
    create_table :payment_informations do |t|
      t.integer :user_id
      t.string :name_on_card
      t.string :issuing_bank
      t.string :creditdebit_card_number
      t.string :type_of_card

      t.timestamps

    end
  end
end
