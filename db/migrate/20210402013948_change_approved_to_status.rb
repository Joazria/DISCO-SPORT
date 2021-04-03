class ChangeApprovedToStatus < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :approved, :status
  end
end
