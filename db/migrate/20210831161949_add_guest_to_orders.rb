class AddGuestToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :guest, :integer
  end
end
