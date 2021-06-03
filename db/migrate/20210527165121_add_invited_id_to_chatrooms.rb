class AddInvitedIdToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :invited_id, :integer
  end
end
