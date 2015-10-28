json.array!(@experience_types) do |experience_type|
  json.extract! experience_type, :id, :name, :description
  json.url experience_type_url(experience_type, format: :json)
end
