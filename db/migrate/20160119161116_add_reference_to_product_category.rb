class AddReferenceToProductCategory < ActiveRecord::Migration
  def change
  	add_reference :product_categories, :products
  	add_reference :product_categories, :categories
  end
end
