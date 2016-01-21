class CreateProEntries < ActiveRecord::Migration
  def change
    create_table :pro_entries do |t|

      t.timestamps null: false
      
    end
  end
end
