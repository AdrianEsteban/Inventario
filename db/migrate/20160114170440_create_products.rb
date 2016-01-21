class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :quantity
      t.boolean :cost
      t.attachment :image

      t.timestamps null: false
    end
  end
end
