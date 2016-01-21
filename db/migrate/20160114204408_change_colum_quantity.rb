class ChangeColumQuantity < ActiveRecord::Migration
  def change
  	remove_column :pro_entries, :quantity, :integer
  	add_column :pro_entries, :quantity_input, :integer
  end
end
