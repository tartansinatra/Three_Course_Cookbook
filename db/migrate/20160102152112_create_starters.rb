class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.text :name
      t.string :description
      t.string :instructions
      t.text :category
      t.string :image

      t.timestamps null: false
    end
  end
end
