class ChangeStatusTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :status, :string
  end
end
