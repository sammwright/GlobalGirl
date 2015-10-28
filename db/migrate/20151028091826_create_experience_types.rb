class CreateExperienceTypes < ActiveRecord::Migration
  def change
    create_table :experience_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
