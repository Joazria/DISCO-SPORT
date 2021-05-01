class AddUserToIdentities < ActiveRecord::Migration[6.0]
  def change
    add_reference :identities, :user, null: false, foreign_key: true
  end
end
