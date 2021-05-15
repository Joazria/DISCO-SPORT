class AddUserToNewsletters < ActiveRecord::Migration[6.0]
  def change
    add_reference :newsletters, :user, null: false, foreign_key: true
  end
end
