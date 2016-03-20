class AddColumnsToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :name, :string
    add_column :tickets, :email, :string
  end
end
