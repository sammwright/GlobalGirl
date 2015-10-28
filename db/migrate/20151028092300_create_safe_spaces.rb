class CreateSafeSpaces < ActiveRecord::Migration
  def change
    create_table :safe_spaces do |t|
      t.string :contact_name
      t.string :contact_phone
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :contact_email

      t.timestamps null: false
    end
  end
end
