class AddReferenceToProductsCategories < ActiveRecord::Migration
  def change
  	add_reference :categories_products, :products
  	add_reference :categories_products, :categories
  end
end
