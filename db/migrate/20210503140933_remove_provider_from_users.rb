class RemoveProviderFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :provider, :string
    remove_column :users, :uid, :string
    remove_column :users, :linkedin_picture_url, :string
    remove_column :users, :token, :string
    remove_column :users, :token_expiry, :datetime
  end
end
