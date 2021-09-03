class AddColumnsToPlace < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :price, :integer
    add_column :places, :description, :text
  end
end
