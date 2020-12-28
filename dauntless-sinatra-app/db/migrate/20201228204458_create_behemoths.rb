class CreateBehemoths < ActiveRecord::Migration
  def change
    create_table :behemoths do |t|
      
      t.timestamps null: false
    end
  end
end
