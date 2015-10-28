json.array!(@safe_spaces) do |safe_space|
  json.extract! safe_space, :id, :contact_name, :contact_phone, :address, :suburb, :state, :postcode, :country, :latitude, :longitude, :contact_email
  json.url safe_space_url(safe_space, format: :json)
end
