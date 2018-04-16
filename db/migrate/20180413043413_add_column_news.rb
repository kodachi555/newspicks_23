class AddColumnNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :site_name, :string
  end
end
