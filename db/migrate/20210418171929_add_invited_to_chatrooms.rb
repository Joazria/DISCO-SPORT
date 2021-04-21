class AddInvitedToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :invited, :string
  end
end
