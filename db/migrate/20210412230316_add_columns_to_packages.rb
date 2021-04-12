class AddColumnsToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :sku, :string
    add_column :packages, :name, :string
  end
end
