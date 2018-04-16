class AddColumnSitename < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :site_name, :string
  end
end
