class CreateUserExperienceTypes < ActiveRecord::Migration
  def change
    create_table :user_experience_types do |t|
      t.references :user, index: true, foreign_key: true
      t.references :experience_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
