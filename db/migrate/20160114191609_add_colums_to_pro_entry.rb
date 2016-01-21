class AddColumsToProEntry < ActiveRecord::Migration
  def change
  	add_column :pro_entries, :quantity, :integer
  	
  end
end
