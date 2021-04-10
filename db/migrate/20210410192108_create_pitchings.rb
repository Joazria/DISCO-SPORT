class CreatePitchings < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchings do |t|
      t.string :name
      t.text :description
      t.string :video
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
