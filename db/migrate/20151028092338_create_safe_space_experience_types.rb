class CreateSafeSpaceExperienceTypes < ActiveRecord::Migration
  def change
    create_table :safe_space_experience_types do |t|
      t.references :safe_space, index: true, foreign_key: true
      t.references :experience_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
