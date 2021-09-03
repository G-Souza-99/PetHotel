class ChangeColumnTypeInOrder < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :checkin, :date
    change_column :orders, :checkout, :date
  end
end
