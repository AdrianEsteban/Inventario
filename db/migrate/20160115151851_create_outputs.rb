class CreateOutputs < ActiveRecord::Migration
  def change
    create_table :outputs do |t|
      t.integer :quantity_ouput
      t.timestamps null: false
    end
  end
end
