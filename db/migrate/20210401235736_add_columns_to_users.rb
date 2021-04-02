class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company, :string
    add_column :users, :country, :string
    add_column :users, :activity, :string
    add_column :users, :website, :string
    add_column :users, :gender, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :whatsapp, :string
    add_column :users, :linkedin, :string
    add_column :users, :release, :text
    add_column :users, :status, :string
    add_column :users, :member, :string
  end
end
