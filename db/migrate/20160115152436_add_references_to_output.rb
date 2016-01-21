class AddReferencesToOutput < ActiveRecord::Migration
  def change
  	add_reference :outputs, :products
  end
end
