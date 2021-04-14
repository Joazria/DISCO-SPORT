class AddDescriptionToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :description, :text
    add_column :packages, :image, :string
  end
end
