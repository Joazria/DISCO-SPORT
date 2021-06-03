class RemoveNameFromChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :name, :string
  end
end
