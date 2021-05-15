class CreateNewsletters < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :punshline
      t.text :article
      t.string :publish
      t.string :en_fr

      t.timestamps
    end
  end
end
