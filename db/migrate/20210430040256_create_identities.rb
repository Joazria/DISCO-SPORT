class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :identities do |t|
      t.string :company
      t.string :country
      t.string :activity
      t.string :website
      t.string :gender
      t.string :phone
      t.string :whatsapp
      t.string :linkedin
      t.string :release
      t.string :member
      t.string :job

      t.timestamps
    end
  end
end
