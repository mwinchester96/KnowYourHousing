json.array!(@properties) do |property|
  json.extract! property, :id, :address, :realtor_id, :created_at, :updated_at
  json.url property_url(property, format: :json)
end
