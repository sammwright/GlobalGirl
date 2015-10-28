json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :nationality, :age_range, :interests, :user_id
  json.url profile_url(profile, format: :json)
end
