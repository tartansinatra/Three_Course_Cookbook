class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.text :name
      t.string :description
      t.string :instructions
      t.string :image

      t.timestamps null: false
    end
  end
end
