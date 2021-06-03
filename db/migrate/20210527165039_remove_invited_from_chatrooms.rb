class RemoveInvitedFromChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :invited, :string
  end
end
