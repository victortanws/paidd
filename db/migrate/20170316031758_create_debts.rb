class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :amount_debt
      t.integer :user_id
      t.integer :other_id

      t.timestamps

    end
  end
end
