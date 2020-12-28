class CreateBehemoths < ActiveRecord::Migration
  def change
    create_table :behemoths do |t|
      t.string :name
      t.string :element
      t.integer :slayer_id
      
      t.timestamps null: false
    end
  end
end
