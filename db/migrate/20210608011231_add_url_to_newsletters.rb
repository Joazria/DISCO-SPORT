class AddUrlToNewsletters < ActiveRecord::Migration[6.0]
  def change
    add_column :newsletters, :url, :string
  end
end
