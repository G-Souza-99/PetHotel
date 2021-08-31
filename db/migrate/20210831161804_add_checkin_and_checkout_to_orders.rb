class AddCheckinAndCheckoutToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :checkin, :date
    add_column :orders, :checkout, :date
  end
end
