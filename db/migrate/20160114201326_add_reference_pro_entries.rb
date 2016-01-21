class AddReferenceProEntries < ActiveRecord::Migration
  def change
  	add_reference :pro_entries, :products
  end
end
