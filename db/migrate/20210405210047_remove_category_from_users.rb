class RemoveCategoryFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :category, :string
  end
end
