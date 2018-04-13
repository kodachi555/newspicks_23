class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string      :title, index: true, null: false
      t.string      :image_url
      t.string      :page_url
      t.timestamps
    end
  end
end
