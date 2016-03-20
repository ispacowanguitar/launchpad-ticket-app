class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :showing_id
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
