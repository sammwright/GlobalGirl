class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :nationality
      t.string :age_range
      t.string :interests
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
