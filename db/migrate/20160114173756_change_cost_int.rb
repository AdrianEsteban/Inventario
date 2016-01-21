class ChangeCostInt < ActiveRecord::Migration
  def change
  	remove_column :products, :cost, :boolean
  	add_column :products, :cost, :decimal
  end
end
