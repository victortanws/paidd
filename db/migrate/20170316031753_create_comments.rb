class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :comment_body
      t.integer :payment_id

      t.timestamps

    end
  end
end
