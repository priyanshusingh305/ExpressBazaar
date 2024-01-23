class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :image_url, null: false
      t.text :description, null:false
      t.decimal :price,precision: 8, scale: 2, null: false

      t.timestamps
    end
  end
end
