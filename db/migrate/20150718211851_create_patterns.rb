class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :manufacturer
      t.text :description
      t.integer :price
      t.string :color_metal
      t.string :color_theme
      t.string :website
      t.string :address
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
