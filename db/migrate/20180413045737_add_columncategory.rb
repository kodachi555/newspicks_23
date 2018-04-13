class AddColumncategory < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :category_id, :integer
  end
end
