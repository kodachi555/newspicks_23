class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :image_url
      t.text :page_url
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
