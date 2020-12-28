class CreateSlayers < ActiveRecord::Migration
  def change
    create_table :slayers do |t|
      t.string :name
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end